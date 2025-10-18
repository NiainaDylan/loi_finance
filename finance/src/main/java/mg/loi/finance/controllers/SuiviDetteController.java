package mg.loi.finance.controllers;

import mg.loi.finance.models.SuiviDette;
import mg.loi.finance.services.SuiviDetteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/suivi-dettes")
public class SuiviDetteController {
    
    private final SuiviDetteService suiviDetteService;

    @Autowired
    public SuiviDetteController(SuiviDetteService suiviDetteService) {
        this.suiviDetteService = suiviDetteService;
    }
    
   
}