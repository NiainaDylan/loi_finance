package mg.loi.finance.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "nature_recette")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class NatureRecette {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_nature")
    private Long idNature;
    
    private String libelle;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_recette")
    private Recette recette;
    
    @OneToMany(mappedBy = "natureRecette", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<SuiviFinancierRecette> suivisFinanciers;
    
   
}