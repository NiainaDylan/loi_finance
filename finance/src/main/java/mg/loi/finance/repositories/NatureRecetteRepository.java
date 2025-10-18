package mg.loi.finance.repositories;

import mg.loi.finance.models.NatureRecette;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NatureRecetteRepository extends JpaRepository<NatureRecette, Long> {
}