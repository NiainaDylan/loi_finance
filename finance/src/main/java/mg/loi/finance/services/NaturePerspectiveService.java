package mg.loi.finance.services;

import mg.loi.finance.models.NaturePerspective;
import mg.loi.finance.repositories.NaturePerspectiveRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class NaturePerspectiveService extends BaseService<NaturePerspective, Long> {
    
    @Autowired
    private NaturePerspectiveRepository naturePerspectiveRepository;
    
    @Override
    protected JpaRepository<NaturePerspective, Long> getRepository() {
        return naturePerspectiveRepository;
    }
}