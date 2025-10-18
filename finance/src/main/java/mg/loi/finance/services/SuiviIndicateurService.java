package mg.loi.finance.services;

import mg.loi.finance.models.SuiviIndicateur;
import mg.loi.finance.repositories.SuiviIndicateurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class SuiviIndicateurService extends BaseService<SuiviIndicateur, Long> {
    
    @Autowired
    private SuiviIndicateurRepository suiviIndicateurRepository;
    
    @Override
    protected JpaRepository<SuiviIndicateur, Long> getRepository() {
        return suiviIndicateurRepository;
    }
}