package mg.loi.finance.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "secteur")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Secteur {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_secteur")
    private Long idSecteur;
    
    private String type;
    
    @OneToMany(mappedBy = "secteur", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<RubriqueSecteur> rubriquesSecteur;
    
   
}