package mg.loi.finance.repositories;

import mg.loi.finance.models.NatureDepense;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NatureDepenseRepository extends JpaRepository<NatureDepense, Long> {
}