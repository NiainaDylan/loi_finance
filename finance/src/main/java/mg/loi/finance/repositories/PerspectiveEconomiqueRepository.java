package mg.loi.finance.repositories;

import mg.loi.finance.models.PerspectiveEconomique;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PerspectiveEconomiqueRepository extends JpaRepository<PerspectiveEconomique, Long> {
}