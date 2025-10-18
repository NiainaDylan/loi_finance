package mg.loi.finance.repositories;

import mg.loi.finance.models.NaturePerspective;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NaturePerspectiveRepository extends JpaRepository<NaturePerspective, Long> {
}