package mg.loi.finance.controllers;

import mg.loi.finance.models.SuiviDette;
import mg.loi.finance.models.Dette;
import mg.loi.finance.services.SuiviDetteService;
import mg.loi.finance.services.DetteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/suivi-dettes")
public class SuiviDetteController {
    
    private final SuiviDetteService suiviDetteService;
    private final DetteService detteService;

    @Autowired
    public SuiviDetteController(SuiviDetteService suiviDetteService, DetteService detteService) {
        this.suiviDetteService = suiviDetteService;
        this.detteService = detteService;
    }

    @GetMapping
    public String listSuiviDettes(Model model,
                                  @RequestParam(name = "detteId", required = false) Long detteId,
                                  @RequestParam(name = "fromYear", required = false) Integer fromYear,
                                  @RequestParam(name = "toYear", required = false) Integer toYear,
                                  @RequestParam(name = "page", defaultValue = "0") int page,
                                  @RequestParam(name = "size", defaultValue = "20") int size) {
        List<SuiviDette> suivis = suiviDetteService.findAll();
        List<Dette> dettesAll = detteService.findAll();

        List<Dette> dettes = dettesAll;
        if (detteId != null) {
            dettes = dettes.stream().filter(d -> detteId.equals(d.getId())).collect(Collectors.toList());
        }

        // années
        Set<Integer> annees = suivis.stream().map(SuiviDette::getAnnee).collect(Collectors.toCollection(TreeSet::new));
        if (fromYear != null || toYear != null) {
            int from = (fromYear != null) ? fromYear : annees.stream().findFirst().orElse(0);
            int to = (toYear != null) ? toYear : annees.stream().reduce((first, second) -> second).orElse(from);
            final int f = from; final int t = to;
            annees = annees.stream().filter(a -> a >= f && a <= t).collect(Collectors.toCollection(TreeSet::new));
        }

        // Filtrer suivis
        List<SuiviDette> suivisFiltres = suivis.stream()
                .filter(s -> s.getDette() != null)
                .filter(s -> dettes.stream().anyMatch(d -> d.getId().equals(s.getDette().getId())))
                .filter(s -> annees.contains(s.getAnnee()))
                .collect(Collectors.toList());

        Map<Integer, BigDecimal> totauxParAnnee = new HashMap<>();
        for (Integer annee : annees) {
            BigDecimal total = suivisFiltres.stream().filter(s -> s.getAnnee() == annee).map(SuiviDette::getMontant).reduce(BigDecimal.ZERO, BigDecimal::add);
            totauxParAnnee.put(annee, total);
        }

        Map<Long, Map<Integer, BigDecimal>> montantsParDetteParAnnee = new HashMap<>();
        for (SuiviDette s : suivisFiltres) {
            if (s.getDette() == null) continue;
            Long id = s.getDette().getId();
            Integer a = s.getAnnee();
            BigDecimal m = s.getMontant() == null ? BigDecimal.ZERO : s.getMontant();

            montantsParDetteParAnnee.computeIfAbsent(id, k -> new HashMap<>());
            Map<Integer, BigDecimal> map = montantsParDetteParAnnee.get(id);
            map.put(a, map.getOrDefault(a, BigDecimal.ZERO).add(m));
        }

        // Pagination
        int totalItems = dettes.size();
        int totalPages = (int) Math.ceil((double) totalItems / size);
        if (page < 0) page = 0;
        if (page >= totalPages && totalPages > 0) page = totalPages - 1;
        int fromIndex = page * size;
        int toIndex = Math.min(fromIndex + size, totalItems);
        List<Dette> dettesPage = dettes.subList(fromIndex, toIndex);

        model.addAttribute("dettes", dettesPage);
        model.addAttribute("annees", annees);
        model.addAttribute("totauxParAnnee", totauxParAnnee);
        model.addAttribute("montantsParDetteAnnee", montantsParDetteParAnnee);

        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("totalItems", totalItems);
        model.addAttribute("size", size);

        model.addAttribute("detteId", detteId);
        model.addAttribute("fromYear", fromYear);
        model.addAttribute("toYear", toYear);

        model.addAttribute("allDettes", dettesAll);

        return "Dette/list";
    }
}