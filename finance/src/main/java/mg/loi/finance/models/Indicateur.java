package mg.loi.finance.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "indicateur")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Indicateur {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    
    private String libelle;
    
    @OneToMany(mappedBy = "indicateur", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<SuiviIndicateur> suivisIndicateur;
    
   
}