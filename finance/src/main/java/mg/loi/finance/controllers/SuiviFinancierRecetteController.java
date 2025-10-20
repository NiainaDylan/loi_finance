package mg.loi.finance.controllers;

import mg.loi.finance.models.*;
import mg.loi.finance.services.NatureRecetteService;
import mg.loi.finance.services.SuiviFinancierRecetteService;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/suivi-financier-recettes")
public class SuiviFinancierRecetteController {
    

    private final SuiviFinancierRecetteService suiviFinancierRecetteService;
    private final NatureRecetteService natureRecetteService;

    @Autowired
    public SuiviFinancierRecetteController(SuiviFinancierRecetteService suiviFinancierRecetteService,
                                           NatureRecetteService natureRecetteService) {
        this.suiviFinancierRecetteService = suiviFinancierRecetteService;
        this.natureRecetteService = natureRecetteService;
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
   
}