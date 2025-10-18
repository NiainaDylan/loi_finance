package mg.loi.finance.controllers;

import mg.loi.finance.services.PerspectiveEconomiqueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/perspectives-economiques")
public class PerspectiveEconomiqueController {
    
    @Autowired
    private PerspectiveEconomiqueService perspectiveEconomiqueService;
    
   
}