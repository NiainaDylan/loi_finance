package mg.loi.finance.services;

import mg.loi.finance.models.SuiviFinancierRecette;
import mg.loi.finance.repositories.SuiviFinancierRecetteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class SuiviFinancierRecetteService extends BaseService<SuiviFinancierRecette, Long> {
    
    @Autowired
    private SuiviFinancierRecetteRepository suiviFinancierRecetteRepository;
    
    @Override
    protected JpaRepository<SuiviFinancierRecette, Long> getRepository() {
        return suiviFinancierRecetteRepository;
    }
}