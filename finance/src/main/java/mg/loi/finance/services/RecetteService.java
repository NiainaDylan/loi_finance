package mg.loi.finance.services;

import mg.loi.finance.models.Recette;
import mg.loi.finance.repositories.RecetteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class RecetteService extends BaseService<Recette, Long> {
    
    @Autowired
    private RecetteRepository recetteRepository;
    
    @Override
    protected JpaRepository<Recette, Long> getRepository() {
        return recetteRepository;
    }
}