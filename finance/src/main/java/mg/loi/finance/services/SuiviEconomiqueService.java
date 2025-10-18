package mg.loi.finance.services;

import mg.loi.finance.models.SuiviEconomique;
import mg.loi.finance.repositories.SuiviEconomiqueRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class SuiviEconomiqueService extends BaseService<SuiviEconomique, Long> {
    
    @Autowired
    private SuiviEconomiqueRepository suiviEconomiqueRepository;
    
    @Override
    protected JpaRepository<SuiviEconomique, Long> getRepository() {
        return suiviEconomiqueRepository;
    }
}