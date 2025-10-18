package mg.loi.finance.services;

import mg.loi.finance.models.Indicateur;
import mg.loi.finance.repositories.IndicateurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class IndicateurService extends BaseService<Indicateur, Long> {
    
    @Autowired
    private IndicateurRepository indicateurRepository;
    
    @Override
    protected JpaRepository<Indicateur, Long> getRepository() {
        return indicateurRepository;
    }
}