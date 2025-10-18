package mg.loi.finance.services;

import mg.loi.finance.models.PerspectiveEconomique;
import mg.loi.finance.repositories.PerspectiveEconomiqueRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class PerspectiveEconomiqueService extends BaseService<PerspectiveEconomique, Long> {
    
    @Autowired
    private PerspectiveEconomiqueRepository perspectiveEconomiqueRepository;
    
    @Override
    protected JpaRepository<PerspectiveEconomique, Long> getRepository() {
        return perspectiveEconomiqueRepository;
    }
}