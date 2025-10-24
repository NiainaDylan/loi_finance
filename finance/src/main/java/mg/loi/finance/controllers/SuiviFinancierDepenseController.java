package mg.loi.finance.controllers;

import mg.loi.finance.models.SuiviFinancierDepense;
import mg.loi.finance.models.NatureDepense;
import mg.loi.finance.services.SuiviFinancierDepenseService;
import mg.loi.finance.services.NatureDepenseService;
import mg.loi.finance.services.DepenseService;
import mg.loi.finance.models.Depense;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.Map;
import java.util.HashMap;
import java.util.stream.Collectors;
import java.util.Comparator;

@Controller
@RequestMapping("/suivi-financier-depenses")
public class SuiviFinancierDepenseController {
    
    private final SuiviFinancierDepenseService suiviFinancierDepenseService;
    private final NatureDepenseService natureDepenseService;
    private final DepenseService depenseService;

    @Autowired
    public SuiviFinancierDepenseController(SuiviFinancierDepenseService suiviFinancierDepenseService,
                                           NatureDepenseService natureDepenseService,
                                           DepenseService depenseService) {
        this.suiviFinancierDepenseService = suiviFinancierDepenseService;
        this.natureDepenseService = natureDepenseService;
        this.depenseService = depenseService;
    }
    
    @GetMapping
    public String listSuiviDepenses(Model model,
                                    @RequestParam(name = "depenseId", required = false) Long depenseId,
                                    @RequestParam(name = "natureId", required = false) Long natureId,
                                    @RequestParam(name = "fromYear", required = false) Integer fromYear,
                                    @RequestParam(name = "toYear", required = false) Integer toYear,
                                    @RequestParam(name = "page", defaultValue = "0") int page,
                                    @RequestParam(name = "size", defaultValue = "20") int size,
                                    @RequestParam(name = "sortField", defaultValue = "rubrique") String sortField,
                                    @RequestParam(name = "sortDir", defaultValue = "asc") String sortDir) {
        List<SuiviFinancierDepense> suivis = suiviFinancierDepenseService.findAll();
        List<NatureDepense> naturesAll = natureDepenseService.findAll();
        List<Depense> depenses = depenseService.findAll();

        // Appliquer filtres sur natures si demandé (par dépense ou nature)
        List<NatureDepense> natures = naturesAll;
        if (depenseId != null) {
            natures = natures.stream()
                    .filter(n -> n.getDepense() != null && depenseId.equals(n.getDepense().getIdDepense()))
                    .collect(Collectors.toList());
        }
        if (natureId != null) {
            natures = natures.stream()
                    .filter(n -> natureId.equals(n.getIdNature()))
                    .collect(Collectors.toList());
        }

        // Déterminer années disponibles à partir des suivis, puis appliquer plage d'années si fournie
        Set<Integer> annees = suivis.stream()
                .map(SuiviFinancierDepense::getAnnee)
                .collect(Collectors.toCollection(TreeSet::new));
        if (fromYear != null || toYear != null) {
            int from = (fromYear != null) ? fromYear : annees.stream().findFirst().orElse(0);
            int to = (toYear != null) ? toYear : annees.stream().reduce((first, second) -> second).orElse(from);
            final int f = from; final int t = to;
            annees = annees.stream().filter(a -> a >= f && a <= t).collect(Collectors.toCollection(TreeSet::new));
        }

        // Créer des copies 'effectively final' pour utilisation dans les lambdas
        final Set<Long> natureIds = natures.stream().map(NatureDepense::getIdNature).collect(Collectors.toSet());
        final Set<Integer> anneesSet = new TreeSet<>(annees);

        // Filtrer les suivis en fonction des natures sélectionnées et de la plage d'années
        List<SuiviFinancierDepense> suivisFiltres = suivis.stream()
                .filter(s -> s.getNatureDepense() != null)
                .filter(s -> natureIds.contains(s.getNatureDepense().getIdNature()))
                .filter(s -> anneesSet.contains(s.getAnnee()))
                .collect(Collectors.toList());

        // Calculer les totaux par année
        Map<Integer, BigDecimal> totauxParAnnee = new HashMap<>();
        for (Integer annee : anneesSet) {
            BigDecimal total = suivisFiltres.stream()
                    .filter(s -> s.getAnnee() == annee)
                    .map(SuiviFinancierDepense::getMontant)
                    .reduce(BigDecimal.ZERO, BigDecimal::add);
            totauxParAnnee.put(annee, total);
        }

        // Calculer une map (natureId -> (annee -> somme des montants)) pour accélérer l'affichage
        Map<Long, Map<Integer, BigDecimal>> montantsParNatureParAnnee = new HashMap<>();
        for (SuiviFinancierDepense s : suivisFiltres) {
            if (s.getNatureDepense() == null) continue;
            Long nid = s.getNatureDepense().getIdNature();
            Integer a = s.getAnnee();
            BigDecimal m = s.getMontant() == null ? BigDecimal.ZERO : s.getMontant();

            montantsParNatureParAnnee.computeIfAbsent(nid, k -> new HashMap<>());
            Map<Integer, BigDecimal> mapAnnee = montantsParNatureParAnnee.get(nid);
            mapAnnee.put(a, mapAnnee.getOrDefault(a, BigDecimal.ZERO).add(m));
        }

        // Trier les natures
        Comparator<NatureDepense> comparator = Comparator.comparing(NatureDepense::getRubrique, Comparator.nullsFirst(String::compareToIgnoreCase));
        if ("depense".equalsIgnoreCase(sortField)) {
            comparator = Comparator.comparing(n -> n.getDepense() != null ? n.getDepense().getNature() : "", Comparator.nullsFirst(String::compareToIgnoreCase));
        }
        if ("desc".equalsIgnoreCase(sortDir)) comparator = comparator.reversed();
        natures = natures.stream().sorted(comparator).collect(Collectors.toList());

        // Pagination basique
        int totalItems = natures.size();
        int totalPages = (int) Math.ceil((double) totalItems / size);
        if (page < 0) page = 0;
        if (page >= totalPages && totalPages > 0) page = totalPages - 1;
        int fromIndex = page * size;
        int toIndex = Math.min(fromIndex + size, totalItems);
        List<NatureDepense> naturesPage = natures.subList(fromIndex, toIndex);

        model.addAttribute("suivis", suivisFiltres);
        model.addAttribute("natures", naturesPage);
        model.addAttribute("annees", anneesSet);
        model.addAttribute("totauxParAnnee", totauxParAnnee);
        model.addAttribute("montantsParNatureAnnee", montantsParNatureParAnnee);

        // pagination metadata
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("totalItems", totalItems);
        model.addAttribute("size", size);

        // conserver filtres
        model.addAttribute("depenseId", depenseId);
        model.addAttribute("natureId", natureId);
        model.addAttribute("fromYear", fromYear);
        model.addAttribute("toYear", toYear);
        model.addAttribute("sortField", sortField);
        model.addAttribute("sortDir", sortDir);

        // données pour selects
        model.addAttribute("allDepenses", depenses);
        model.addAttribute("allNatures", naturesAll);

        return "Depense/list";
    }

}