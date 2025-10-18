package mg.loi.finance.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "recette")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Recette {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_recette")
    private Long idRecette;
    
    private String nature;
    
    @OneToMany(mappedBy = "recette", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<NatureRecette> naturesRecette;
    
    
}