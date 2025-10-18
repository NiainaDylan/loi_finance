package mg.loi.finance.repositories;

import mg.loi.finance.models.SuiviIndicateur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SuiviIndicateurRepository extends JpaRepository<SuiviIndicateur, Long> {
}