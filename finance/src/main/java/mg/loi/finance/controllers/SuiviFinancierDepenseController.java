package mg.loi.finance.controllers;

import mg.loi.finance.models.SuiviFinancierDepense;
import mg.loi.finance.models.NatureDepense;
import mg.loi.finance.services.SuiviFinancierDepenseService;
import mg.loi.finance.services.NatureDepenseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.TreeSet;
import java.util.Map;
import java.util.HashMap;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/suivi-financier-depenses")
public class SuiviFinancierDepenseController {
    
    private final SuiviFinancierDepenseService suiviFinancierDepenseService;
    private final NatureDepenseService natureDepenseService;

    @Autowired
    public SuiviFinancierDepenseController(SuiviFinancierDepenseService suiviFinancierDepenseService,
                                           NatureDepenseService natureDepenseService) {
        this.suiviFinancierDepenseService = suiviFinancierDepenseService;
        this.natureDepenseService = natureDepenseService;
    }
    
    @GetMapping
    public String listSuiviDepenses(Model model) {
        List<SuiviFinancierDepense> suivis = suiviFinancierDepenseService.findAll();
        List<NatureDepense> natures = natureDepenseService.findAll();

        // Récupérer toutes les années disponibles et les trier
        Set<Integer> annees = suivis.stream()
                .map(SuiviFinancierDepense::getAnnee)
                .collect(Collectors.toCollection(TreeSet::new));

        // Calculer les totaux par année
        Map<Integer, BigDecimal> totauxParAnnee = new HashMap<>();
        for (Integer annee : annees) {
            BigDecimal total = suivis.stream()
                    .filter(s -> s.getAnnee() == annee)
                    .map(SuiviFinancierDepense::getMontant)
                    .reduce(BigDecimal.ZERO, BigDecimal::add);
            totauxParAnnee.put(annee, total);
        }

        // Calculer une map (natureId -> (annee -> somme des montants)) pour accélérer l'affichage
        Map<Long, Map<Integer, BigDecimal>> montantsParNatureParAnnee = new HashMap<>();
        for (SuiviFinancierDepense s : suivis) {
            if (s.getNatureDepense() == null) continue;
            Long nid = s.getNatureDepense().getIdNature();
            Integer a = s.getAnnee();
            BigDecimal m = s.getMontant() == null ? BigDecimal.ZERO : s.getMontant();

            montantsParNatureParAnnee.computeIfAbsent(nid, k -> new HashMap<>());
            Map<Integer, BigDecimal> mapAnnee = montantsParNatureParAnnee.get(nid);
            mapAnnee.put(a, mapAnnee.getOrDefault(a, BigDecimal.ZERO).add(m));
        }

        model.addAttribute("suivis", suivis);
        model.addAttribute("natures", natures);
        model.addAttribute("annees", annees);
        model.addAttribute("totauxParAnnee", totauxParAnnee);
        model.addAttribute("montantsParNatureAnnee", montantsParNatureParAnnee);
        return "Depense/list";
    }

}