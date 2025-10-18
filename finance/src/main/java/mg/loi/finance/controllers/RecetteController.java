package mg.loi.finance.controllers;

import mg.loi.finance.services.RecetteService;
import mg.loi.finance.models.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;


@Controller
@RequestMapping("/recette")
public class RecetteController {
    
    private final RecetteService recetteService;

    @Autowired
    public RecetteController(RecetteService recetteService) {
        this.recetteService = recetteService;
    }
    
    @GetMapping("/all")
    public String getAllRecettes(Model model) {
        List<Recette> recettes = recetteService.findAll();
        model.addAttribute("recettes", recettes);
        return "Recette/list";
    }
   
}