package mg.loi.finance.services;

import mg.loi.finance.models.NatureRecette;
import mg.loi.finance.repositories.NatureRecetteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class NatureRecetteService extends BaseService<NatureRecette, Long> {
    
    @Autowired
    private NatureRecetteRepository natureRecetteRepository;
    
    @Override
    protected JpaRepository<NatureRecette, Long> getRepository() {
        return natureRecetteRepository;
    }
}