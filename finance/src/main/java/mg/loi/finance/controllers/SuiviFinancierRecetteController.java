package mg.loi.finance.controllers;

import mg.loi.finance.models.*;
import mg.loi.finance.services.NatureRecetteService;
import mg.loi.finance.services.RecetteService;
import mg.loi.finance.services.SuiviFinancierRecetteService;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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