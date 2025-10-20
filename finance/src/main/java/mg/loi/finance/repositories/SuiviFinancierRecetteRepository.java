package mg.loi.finance.repositories;

import mg.loi.finance.models.SuiviFinancierRecette;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SuiviFinancierRecetteRepository extends JpaRepository<SuiviFinancierRecette, Long> {

    @Query("""
        SELECT s FROM SuiviFinancierRecette s WHERE 
        s.natureRecette.recette.id = :idRecette   
            """)
    List<SuiviFinancierRecette> findByRecetteId(@Param("idRecette") Long idRecette);

    // Somme des montants pour une recette a une annee donnee
    @Query("""
        SELECT sum(sfr.montant) as s
        FROM SuiviFinancierRecette sfr 
        WHERE sfr.natureRecette.recette.idRecette = :idRecette
        AND sfr.annee = :annee
            """)
    double recetteAvecSomme(@Param("idRecette") Long idRecette, @Param("annee") int annee);
}