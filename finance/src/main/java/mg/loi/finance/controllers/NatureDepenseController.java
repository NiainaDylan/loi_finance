package mg.loi.finance.controllers;

import mg.loi.finance.services.NatureDepenseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/nature-depense")
public class NatureDepenseController {
    
    @Autowired
    private NatureDepenseService natureDepenseService;
    
   
}