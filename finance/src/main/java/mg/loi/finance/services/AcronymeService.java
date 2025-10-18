package mg.loi.finance.services;

import mg.loi.finance.models.Acronyme;
import mg.loi.finance.repositories.AcronymeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class AcronymeService extends BaseService<Acronyme, Long> {
    
    @Autowired
    private AcronymeRepository acronymeRepository;
    
    @Override
    protected JpaRepository<Acronyme, Long> getRepository() {
        return acronymeRepository;
    }
}