package mg.loi.finance.repositories;

import mg.loi.finance.models.SuiviFinancierDepense;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SuiviFinancierDepenseRepository extends JpaRepository<SuiviFinancierDepense, Long> {
}