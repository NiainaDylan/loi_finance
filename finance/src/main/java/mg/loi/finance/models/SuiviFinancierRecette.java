package mg.loi.finance.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.math.BigDecimal;

@Entity
@Table(name = "suivi_financier_recette")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SuiviFinancierRecette {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_suivi_recette")
    private Long idSuiviRecette;
    
    private BigDecimal montant;
    
    private int annee;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_nature")
    private NatureRecette natureRecette;
    
   
}