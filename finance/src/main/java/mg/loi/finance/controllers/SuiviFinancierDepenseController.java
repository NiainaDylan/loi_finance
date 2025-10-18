package mg.loi.finance.controllers;

import mg.loi.finance.models.SuiviFinancierDepense;
import mg.loi.finance.services.SuiviFinancierDepenseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/suivi-financier-depenses")
public class SuiviFinancierDepenseController {
    
    private final SuiviFinancierDepenseService suiviFinancierDepenseService;

    @Autowired
    public SuiviFinancierDepenseController(SuiviFinancierDepenseService suiviFinancierDepenseService) {
        this.suiviFinancierDepenseService = suiviFinancierDepenseService;
    }
    
   
}