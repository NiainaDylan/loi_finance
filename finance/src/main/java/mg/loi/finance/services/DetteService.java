package mg.loi.finance.services;

import mg.loi.finance.models.Dette;
import mg.loi.finance.repositories.DetteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class DetteService extends BaseService<Dette, Long> {
    
    @Autowired
    private DetteRepository detteRepository;
    
    @Override
    protected JpaRepository<Dette, Long> getRepository() {
        return detteRepository;
    }
}