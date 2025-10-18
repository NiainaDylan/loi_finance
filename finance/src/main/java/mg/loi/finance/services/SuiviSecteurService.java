package mg.loi.finance.services;

import mg.loi.finance.models.SuiviSecteur;
import mg.loi.finance.repositories.SuiviSecteurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class SuiviSecteurService extends BaseService<SuiviSecteur, Long> {
    
    @Autowired
    private SuiviSecteurRepository suiviSecteurRepository;
    
    @Override
    protected JpaRepository<SuiviSecteur, Long> getRepository() {
        return suiviSecteurRepository;
    }
}