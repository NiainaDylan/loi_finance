package mg.loi.finance.controllers;

import mg.loi.finance.services.SuiviFinancierRecetteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/suivi-financier-recettes")
public class SuiviFinancierRecetteController {
    
    @Autowired
    private SuiviFinancierRecetteService suiviFinancierRecetteService;
    
   
}