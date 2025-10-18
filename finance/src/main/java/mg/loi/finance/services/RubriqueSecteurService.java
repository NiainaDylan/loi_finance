package mg.loi.finance.services;

import mg.loi.finance.models.RubriqueSecteur;
import mg.loi.finance.repositories.RubriqueSecteurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class RubriqueSecteurService extends BaseService<RubriqueSecteur, Long> {
    
    @Autowired
    private RubriqueSecteurRepository rubriqueSecteurRepository;
    
    @Override
    protected JpaRepository<RubriqueSecteur, Long> getRepository() {
        return rubriqueSecteurRepository;
    }
}