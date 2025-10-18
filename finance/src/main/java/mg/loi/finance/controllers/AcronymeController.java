package mg.loi.finance.controllers;

import mg.loi.finance.services.AcronymeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/acronymes")
public class AcronymeController {
    
    private final AcronymeService acronymeService;

    @Autowired
    public AcronymeController(AcronymeService acronymeService) {
        this.acronymeService = acronymeService;
    }
    
   
}