package mg.loi.finance.controllers;

import mg.loi.finance.models.Secteur;
import mg.loi.finance.services.SecteurService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/secteurs")
public class SecteurController {
    
    private final SecteurService secteurService;

    @Autowired
    public SecteurController(SecteurService secteurService) {
        this.secteurService = secteurService;
    }
    
   
}