package mg.loi.finance.repositories;

import mg.loi.finance.models.Acronyme;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AcronymeRepository extends JpaRepository<Acronyme, Long> {
}