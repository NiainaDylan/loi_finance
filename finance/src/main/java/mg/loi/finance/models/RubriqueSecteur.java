package mg.loi.finance.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "rubrique_secteur")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RubriqueSecteur {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_rubrique")
    private Long idRubrique;
    
    private String rubrique;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_secteur")
    private Secteur secteur;
    
    @OneToMany(mappedBy = "rubriqueSecteur", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<SuiviSecteur> suivisSecteur;
    
   
}