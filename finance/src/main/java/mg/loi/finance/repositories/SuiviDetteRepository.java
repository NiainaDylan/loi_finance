package mg.loi.finance.repositories;

import mg.loi.finance.models.SuiviDette;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SuiviDetteRepository extends JpaRepository<SuiviDette, Long> {
}