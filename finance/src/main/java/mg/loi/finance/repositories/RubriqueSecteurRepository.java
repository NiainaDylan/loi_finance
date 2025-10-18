package mg.loi.finance.repositories;

import mg.loi.finance.models.RubriqueSecteur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RubriqueSecteurRepository extends JpaRepository<RubriqueSecteur, Long> {
}