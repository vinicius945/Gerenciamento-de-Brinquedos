package fiap.com.br.brinquedos_revisao.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

import java.math.BigDecimal;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "TDS_TB_Brinquedos")
public class Brinquedo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @NotBlank
    @Size(max = 100)
    @Column(name = "nome", nullable = false, length = 100)
    private String nome;

    @NotBlank
    @Size(max = 50)
    @Column(name = "tipo", nullable = false, length = 50)
    private String tipo;

    @NotBlank
    @Size(max = 50)
    @Column(name = "classificacao", nullable = false, length = 50)
    private String classificacao;

    @NotBlank
    @Size(max = 20)
    @Column(name = "tamanho", nullable = false, length = 20)
    private String tamanho;

    @NotNull
    @Positive
    @Digits(integer = 8, fraction = 2)
    @Column(name = "preco", nullable = false, precision = 10, scale = 2)
    private BigDecimal preco;

}
