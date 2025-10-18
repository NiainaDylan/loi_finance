package mg.loi.finance.repositories;

import mg.loi.finance.models.SuiviSecteur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SuiviSecteurRepository extends JpaRepository<SuiviSecteur, Long> {
}