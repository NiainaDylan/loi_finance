package mg.loi.finance.controllers;

import mg.loi.finance.models.*;
import mg.loi.finance.services.NatureRecetteService;
import mg.loi.finance.services.SuiviFinancierRecetteService;

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
        model.addAttribute("suivies", suivies);
        return "Recette/suivies";
    }
   
}