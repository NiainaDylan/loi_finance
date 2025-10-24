package mg.loi.finance.controllers;

import mg.loi.finance.models.*;
import mg.loi.finance.services.NatureRecetteService;
import mg.loi.finance.services.RecetteService;
import mg.loi.finance.services.SuiviFinancierRecetteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;
import java.util.Comparator;

@Controller
@RequestMapping("/suivi-financier-recettes")
public class SuiviFinancierRecetteController {
    

    private final SuiviFinancierRecetteService suiviFinancierRecetteService;
    private final NatureRecetteService natureRecetteService;
    private final RecetteService recetteService;

    @Autowired
    public SuiviFinancierRecetteController(SuiviFinancierRecetteService suiviFinancierRecetteService,
                                           NatureRecetteService natureRecetteService,
                                           RecetteService recetteService) {
        this.suiviFinancierRecetteService = suiviFinancierRecetteService;
        this.natureRecetteService = natureRecetteService;
        this.recetteService = recetteService;
    }
    
    @GetMapping
    public String listSuiviRecettes(Model model,
                                    @RequestParam(name = "recetteId", required = false) Long recetteId,
                                    @RequestParam(name = "natureId", required = false) Long natureId,
                                    @RequestParam(name = "fromYear", required = false) Integer fromYear,
                                    @RequestParam(name = "toYear", required = false) Integer toYear,
                                    @RequestParam(name = "page", defaultValue = "0") int page,
                                    @RequestParam(name = "size", defaultValue = "20") int size,
                                    @RequestParam(name = "sortField", defaultValue = "libelle") String sortField,
                                    @RequestParam(name = "sortDir", defaultValue = "asc") String sortDir) {
        List<SuiviFinancierRecette> suivis = suiviFinancierRecetteService.findAll();
        List<NatureRecette> naturesAll = natureRecetteService.findAll();
        List<Recette> recettes = recetteService.findAll();

        List<NatureRecette> allNatures = naturesAll;
        List<NatureRecette> natures = naturesAll;
        if (recetteId != null) {
            natures = natures.stream()
                    .filter(n -> n.getRecette() != null && recetteId.equals(n.getRecette().getIdRecette()))
                    .collect(Collectors.toList());
        }
        if (natureId != null) {
            natures = natures.stream()
                    .filter(n -> natureId.equals(n.getIdNature()))
                    .collect(Collectors.toList());
        }

        // années
        Set<Integer> annees = suivis.stream().map(SuiviFinancierRecette::getAnnee).collect(Collectors.toCollection(TreeSet::new));
        if (fromYear != null || toYear != null) {
            int from = (fromYear != null) ? fromYear : annees.stream().findFirst().orElse(0);
            int to = (toYear != null) ? toYear : annees.stream().reduce((first, second) -> second).orElse(from);
            final int f = from; final int t = to;
            annees = annees.stream().filter(a -> a >= f && a <= t).collect(Collectors.toCollection(TreeSet::new));
        }

        List<SuiviFinancierRecette> suivisFiltres = suivis.stream()
                .filter(s -> s.getNatureRecette() != null)
                .filter(s -> natures.stream().anyMatch(n -> n.getIdNature().equals(s.getNatureRecette().getIdNature())))
                .filter(s -> annees.contains(s.getAnnee()))
                .collect(Collectors.toList());

        Map<Integer, BigDecimal> totauxParAnnee = new HashMap<>();
        for (Integer annee : annees) {
            BigDecimal total = suivisFiltres.stream()
                    .filter(s -> s.getAnnee() == annee)
                    .map(SuiviFinancierRecette::getMontant)
                    .reduce(BigDecimal.ZERO, BigDecimal::add);
            totauxParAnnee.put(annee, total);
        }

        Map<Long, Map<Integer, BigDecimal>> montantsParNatureParAnnee = new HashMap<>();
        for (SuiviFinancierRecette s : suivisFiltres) {
            if (s.getNatureRecette() == null) continue;
            Long nid = s.getNatureRecette().getIdNature();
            Integer a = s.getAnnee();
            BigDecimal m = s.getMontant() == null ? BigDecimal.ZERO : s.getMontant();

            montantsParNatureParAnnee.computeIfAbsent(nid, k -> new HashMap<>());
            Map<Integer, BigDecimal> mapAnnee = montantsParNatureParAnnee.get(nid);
            mapAnnee.put(a, mapAnnee.getOrDefault(a, BigDecimal.ZERO).add(m));
        }

        Comparator<NatureRecette> comparator = Comparator.comparing(NatureRecette::getLibelle, Comparator.nullsFirst(String::compareToIgnoreCase));
        if ("recette".equalsIgnoreCase(sortField)) {
            comparator = Comparator.comparing(n -> n.getRecette() != null ? n.getRecette().getNature() : "", Comparator.nullsFirst(String::compareToIgnoreCase));
        }
        if ("desc".equalsIgnoreCase(sortDir)) comparator = comparator.reversed();
        natures = natures.stream().sorted(comparator).collect(Collectors.toList());

        int totalItems = natures.size();
        int totalPages = (int) Math.ceil((double) totalItems / size);
        if (page < 0) page = 0;
        if (page >= totalPages && totalPages > 0) page = totalPages - 1;
        int fromIndex = page * size;
        int toIndex = Math.min(fromIndex + size, totalItems);
        List<NatureRecette> naturesPage = natures.subList(fromIndex, toIndex);

        model.addAttribute("suivis", suivisFiltres);
        model.addAttribute("natures", naturesPage);
        model.addAttribute("annees", annees);
        model.addAttribute("totauxParAnnee", totauxParAnnee);
        model.addAttribute("montantsParNatureAnnee", montantsParNatureParAnnee);

        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("totalItems", totalItems);
        model.addAttribute("size", size);

        model.addAttribute("recetteId", recetteId);
        model.addAttribute("natureId", natureId);
        model.addAttribute("fromYear", fromYear);
        model.addAttribute("toYear", toYear);
        model.addAttribute("sortField", sortField);
        model.addAttribute("sortDir", sortDir);

        model.addAttribute("allRecettes", recettes);
        model.addAttribute("allNatures", allNatures);

        return "Recette/list";
    }

    @GetMapping("/{idRecette}")
    public String getSuivies(@PathVariable("idRecette") Long idRecette, Model model) {
        List<SuiviFinancierRecette> suivies = suiviFinancierRecetteService.getByRecetteId(idRecette);
        
        List<SuiviFinancierRecette> suivies2024 = new ArrayList<>();
        List<SuiviFinancierRecette> suivies2025 = new ArrayList<>();

        for(SuiviFinancierRecette s : suivies) {
            if(s.getAnnee() == 2024) {
                suivies2024.add(s);
            } else if(s.getAnnee() == 2025) {
                suivies2025.add(s);
            }
        }

        List<NatureRecette> natures = natureRecetteService.getByIdRecette(idRecette);
        BigDecimal total2024 = BigDecimal.ZERO;
        BigDecimal total2025 = BigDecimal.ZERO;

        for(SuiviFinancierRecette s : suivies2024) {
            total2024 = total2024.add(s.getMontant());
        } for(SuiviFinancierRecette s : suivies2025) {
            total2025 = total2025.add(s.getMontant());
        }

        model.addAttribute("natures", natures);
        model.addAttribute("suivies2024", suivies2024);
        model.addAttribute("suivies2025", suivies2025);
        model.addAttribute("total2024", total2024);
        model.addAttribute("total2025", total2025);

        return "Recette/suivies";
    }
   
    @GetMapping("/recette-par-source")
    public String recetteParSource(Model model) {
        List<Recette> list = recetteService.findAll();

        List<String> labels = Arrays.asList("2024", "2025");
        List<String> categories = Arrays.asList("Impots", "Douanes", "Non fiscales", "Dons");
        List<Double> montants2024 = new ArrayList<>();
        List<Double> montants2025 = new ArrayList<>();

        for(Recette r : list) {
            double sum2024 = suiviFinancierRecetteService.recetteAvecSomme(r.getIdRecette(), 2024);
            double sum2025 = suiviFinancierRecetteService.recetteAvecSomme(r.getIdRecette(), 2025);

            if(r.getNature().equals("Recettes fiscales interieures")) {
                montants2024.add(0, sum2024);
                montants2025.add(0, sum2025);
            } else if(r.getNature().equals("Recettes douanieres")) {
                montants2024.add(1, sum2024);
                montants2025.add(1, sum2025);
            } else if(r.getNature().equals("Recettes non fiscales")) {
                montants2024.add(2, sum2024);
                montants2025.add(2, sum2025);
            } else if(r.getNature().equals("Dons")) {
                montants2024.add(3, sum2024);
                montants2025.add(3, sum2025);
            }
        }

        model.addAttribute("labels", labels);
        model.addAttribute("categories", categories);
        model.addAttribute("montants2024", montants2024);
        model.addAttribute("montants2025", montants2025);

        return "Recette/recette-par-source";
    }
}