package mg.loi.finance.controllers;

import mg.loi.finance.services.SuiviIndicateurService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/suivi-indicateurs")
public class SuiviIndicateurController {
    
    private final SuiviIndicateurService suiviIndicateurService;

    @Autowired
    public SuiviIndicateurController(SuiviIndicateurService suiviIndicateurService) {
        this.suiviIndicateurService = suiviIndicateurService;
    }
    
   
}