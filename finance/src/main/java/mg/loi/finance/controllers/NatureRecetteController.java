package mg.loi.finance.controllers;

import mg.loi.finance.services.NatureRecetteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/nature-recette")
public class NatureRecetteController {
    
    @Autowired
    private NatureRecetteService natureRecetteService;
    
   
}