package mg.loi.finance.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "dette")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Dette {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    
    private String nature;
    
    @OneToMany(mappedBy = "dette", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<SuiviDette> suivisDette;
    
   
}