package mg.loi.finance.repositories;

import mg.loi.finance.models.SuiviEconomique;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SuiviEconomiqueRepository extends JpaRepository<SuiviEconomique, Long> {
}