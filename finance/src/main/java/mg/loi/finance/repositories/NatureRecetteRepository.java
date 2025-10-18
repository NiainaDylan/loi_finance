package mg.loi.finance.repositories;

import mg.loi.finance.models.NatureRecette;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface NatureRecetteRepository extends JpaRepository<NatureRecette, Long> {

    @Query("""
        SELECT nr FROM NatureRecette nr WHERE nr.recette.id = :idRecette
            """)
    List<NatureRecette> getByIdRecette(Long idRecette);
}