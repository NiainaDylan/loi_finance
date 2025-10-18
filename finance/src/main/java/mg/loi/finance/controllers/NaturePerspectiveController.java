package mg.loi.finance.controllers;

import mg.loi.finance.services.NaturePerspectiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
@Controller
@RequestMapping("/nature-perspective")
public class NaturePerspectiveController {
    
    @Autowired
    private NaturePerspectiveService naturePerspectiveService;
    
   
}