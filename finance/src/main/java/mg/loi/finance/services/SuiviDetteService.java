package mg.loi.finance.services;

import mg.loi.finance.models.SuiviDette;
import mg.loi.finance.repositories.SuiviDetteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class SuiviDetteService extends BaseService<SuiviDette, Long> {
    
    @Autowired
    private SuiviDetteRepository suiviDetteRepository;
    
    @Override
    protected JpaRepository<SuiviDette, Long> getRepository() {
        return suiviDetteRepository;
    }
}