package mg.loi.finance.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "nature_perspective")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class NaturePerspective {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_nature")
    private Long idNature;
    
    private String rubrique;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id")
    private PerspectiveEconomique perspectiveEconomique;
    
    @OneToMany(mappedBy = "naturePerspective", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<SuiviEconomique> suivisEconomiques;
    
   
}