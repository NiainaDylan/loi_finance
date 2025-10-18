package mg.loi.finance.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "perspective_economique")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PerspectiveEconomique {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    
    private String libelle;
    
    @OneToMany(mappedBy = "perspectiveEconomique", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<NaturePerspective> naturesPerspective;
    
    
}