package mg.loi.finance.services;

import mg.loi.finance.models.Depense;
import mg.loi.finance.repositories.DepenseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class DepenseService extends BaseService<Depense, Long> {
    
    @Autowired
    private DepenseRepository depenseRepository;
    
    @Override
    protected JpaRepository<Depense, Long> getRepository() {
        return depenseRepository;
    }
}