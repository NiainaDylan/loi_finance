package mg.loi.finance.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Entity
@Table(name = "suivi_secteur")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SuiviSecteur {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_suivi")
    private Long idSuivi;
    
    private BigDecimal montant;
    
    private int annee;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_rubrique")
    private RubriqueSecteur rubriqueSecteur;
    
   
}