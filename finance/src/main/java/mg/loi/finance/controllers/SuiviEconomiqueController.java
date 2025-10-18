package mg.loi.finance.controllers;

import mg.loi.finance.models.SuiviEconomique;
import mg.loi.finance.services.SuiviEconomiqueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/suivi-economiques")
public class SuiviEconomiqueController {
    
    @Autowired
    private SuiviEconomiqueService suiviEconomiqueService;
    
   
}