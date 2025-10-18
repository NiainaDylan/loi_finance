package mg.loi.finance.services;

import mg.loi.finance.models.SuiviFinancierDepense;
import mg.loi.finance.repositories.SuiviFinancierDepenseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class SuiviFinancierDepenseService extends BaseService<SuiviFinancierDepense, Long> {
    
    @Autowired
    private SuiviFinancierDepenseRepository suiviFinancierDepenseRepository;
    
    @Override
    protected JpaRepository<SuiviFinancierDepense, Long> getRepository() {
        return suiviFinancierDepenseRepository;
    }
}