package mg.loi.finance.repositories;

import mg.loi.finance.models.SuiviFinancierRecette;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SuiviFinancierRecetteRepository extends JpaRepository<SuiviFinancierRecette, Long> {
}