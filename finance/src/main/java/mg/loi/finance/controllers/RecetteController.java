package mg.loi.finance.controllers;

import mg.loi.finance.services.RecetteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/api/recettes")
public class RecetteController {
    
    @Autowired
    private RecetteService recetteService;
    
   
}