package mg.loi.finance.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "nature_depense")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class NatureDepense {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_nature")
    private Long idNature;
    
    private String rubrique;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_depense")
    private Depense depense;
    
    @OneToMany(mappedBy = "natureDepense", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<SuiviFinancierDepense> suivisFinanciers;
   
}