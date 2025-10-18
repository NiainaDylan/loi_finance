package mg.loi.finance.services;

import mg.loi.finance.models.Secteur;
import mg.loi.finance.repositories.SecteurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class SecteurService extends BaseService<Secteur, Long> {
    
    @Autowired
    private SecteurRepository secteurRepository;
    
    @Override
    protected JpaRepository<Secteur, Long> getRepository() {
        return secteurRepository;
    }
}