package mg.loi.finance.controllers;

import mg.loi.finance.services.DetteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/dette")
public class DetteController {
    
    @Autowired
    private DetteService detteService;
    
   
}