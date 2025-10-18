package mg.loi.finance.controllers;

import mg.loi.finance.services.RubriqueSecteurService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/rubrique-secteur")
public class RubriqueSecteurController {
    
    private final RubriqueSecteurService rubriqueSecteurService;
    
    @Autowired
    public RubriqueSecteurController(RubriqueSecteurService rubriqueSecteurService) {
        this.rubriqueSecteurService = rubriqueSecteurService;
    }
   
}