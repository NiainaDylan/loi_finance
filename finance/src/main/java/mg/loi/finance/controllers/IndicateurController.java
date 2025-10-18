package mg.loi.finance.controllers;

import mg.loi.finance.services.IndicateurService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/indicateurs")
public class IndicateurController {
    
    private final IndicateurService indicateurService;

    @Autowired
    public IndicateurController(IndicateurService indicateurService) {
        this.indicateurService = indicateurService;
    }
   
}