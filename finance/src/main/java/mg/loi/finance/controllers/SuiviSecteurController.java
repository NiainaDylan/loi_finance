package mg.loi.finance.controllers;

import mg.loi.finance.models.SuiviSecteur;
import mg.loi.finance.services.SuiviSecteurService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/suivi-secteurs")
public class SuiviSecteurController {
    
    private final SuiviSecteurService suiviSecteurService;

    @Autowired
    public SuiviSecteurController(SuiviSecteurService suiviSecteurService) {
        this.suiviSecteurService = suiviSecteurService;
    }
    
   
}