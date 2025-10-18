package mg.loi.finance.services;

import mg.loi.finance.models.NatureDepense;
import mg.loi.finance.repositories.NatureDepenseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class NatureDepenseService extends BaseService<NatureDepense, Long> {
    
    @Autowired
    private NatureDepenseRepository natureDepenseRepository;
    
    @Override
    protected JpaRepository<NatureDepense, Long> getRepository() {
        return natureDepenseRepository;
    }
}