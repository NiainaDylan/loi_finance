package mg.loi.finance.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "depense")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Depense {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_depense")
    private Long idDepense;
    
    private String nature;
    
    @OneToMany(mappedBy = "depense", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<NatureDepense> naturesDepense;
    
    
}