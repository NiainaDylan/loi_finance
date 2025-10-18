package mg.loi.finance.controllers;

import mg.loi.finance.services.DepenseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/depense")
public class DepenseController {
    
    @Autowired
    private DepenseService depenseService;
    
   
}