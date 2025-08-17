package fiap.com.br.brinquedos_revisao.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OpenApiConfig {

    @Bean
    public OpenAPI customOpenAPI() {
        return new OpenAPI()
                .info(new Info()
                        .title("(Chekcpoint4) API Brinquedos Revisão")
                        .version("1.0")
                        .description("CRUD completo para gerenciar Brinquedos"));
    }

}
