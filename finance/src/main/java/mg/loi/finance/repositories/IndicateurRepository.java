package mg.loi.finance.repositories;

import mg.loi.finance.models.Indicateur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IndicateurRepository extends JpaRepository<Indicateur, Long> {
}