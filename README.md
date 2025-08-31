## Descrição do Projeto
Este projeto é uma **API RESTful** para gerenciar dados de brinquedos. A solução utiliza **Docker Compose** para orquestrar a aplicação Spring Boot e um banco de dados PostgreSQL em ambientes conteinerizados, criando um ambiente padronizado, seguro e reprodutível.

## Integrantes - Grupo LTAKN
* Enzo Prado Soddano – RM: 557937
* Lucas Resende Lima – RM: 556564
* Vinicius Prates Altafini – RM: 559183

## Arquitetura da Solução
A arquitetura é baseada em microsserviços e é definida no arquivo `docker-compose.yml`, que interliga os seguintes componentes em uma rede interna do Docker:
* **`app`**: Serviço da aplicação Spring Boot.
* **`database`**: Serviço do banco de dados PostgreSQL.

O projeto foi desenvolvido seguindo as boas práticas de containerização, incluindo o uso de **imagens oficiais**, **`health checks`** para monitoramento e a execução da aplicação com um **usuário não-root** para maior segurança.

A imagem a seguir ilustra o fluxo de comunicação e a arquitetura do sistema antigo e atual:
#Arquitetura Antiga:

<img width="464" height="175" alt="image" src="https://github.com/user-attachments/assets/91c41bdd-067c-4645-90a5-18f8e4413629" />

---

# Arquitetura atual:

<img width="771" height="201" alt="Diagrama sem título drawio" src="https://github.com/user-attachments/assets/acc2122c-edaa-4c76-9a6c-c05de20eec10" />


## Tecnologias Utilizadas
* **Java 17** e **Spring Boot 3.x**
* **Docker** e **Docker Compose**
* **PostgreSQL**
* **Spring Data JPA** e **Jakarta Validation**
* **HATEOAS** (nível de maturidade 3)
* **Maven** para gerenciamento de dependências

## Como Executar o Projeto
1.  **Pré-requisitos**: Certifique-se de ter o Docker e o Docker Compose instalados na sua máquina.
2.  **Clone o projeto** do seu repositório Git.
3.  Abra o terminal na pasta raiz do projeto.
4.  Execute o comando a seguir para construir a imagem da aplicação e iniciar todos os contêineres:
    ```bash
    docker compose up --build
    ```
5.  Aguarde a inicialização. A aplicação estará disponível em `http://localhost:8081`.

## Endpoints Principais (REST API)
A API oferece um conjunto completo de operações de CRUD para gerenciar brinquedos.

| Método | Endpoint | Descrição |
| :--- | :--- | :--- |
| `GET` | `/brinquedos` | Lista todos os brinquedos. |
| `GET` | `/brinquedos/{id}` | Obtém brinquedo por ID. |
| `POST` | `/brinquedos` | Cria novo brinquedo. |
| `PUT` | `/brinquedos/{id}` | Atualiza brinquedo completo. |
| `PATCH` | `/brinquedos/{id}` | Atualiza brinquedo parcial. |
| `DELETE` | `/brinquedos/{id}` | Exclui brinquedo por ID. |

## Troubleshooting
* **Erro 'docker' não é reconhecido**: Verifique se o Docker está instalado e rodando.
* **Contêiner com status '(unhealthy)'**: Verifique se o `Actuator` foi adicionado e se o `application.properties` está configurado corretamente.
* **Falha na conexão com o banco**: Verifique se as variáveis de ambiente no `docker-compose.yml` correspondem às configurações do PostgreSQL.## 🧪 Exemplos de Uso (com cURL)

### 🔹 Criar um Brinquedo

curl -X POST https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos \
-H "Content-Type: application/json" \
-d { "nome": "Taco DE Baseball", "tipo": "Taco", "classificacao": "Esportivo", "tamanho": "G", "preco": 90.00 }


<img width="899" height="601" alt="image" src="https://github.com/user-attachments/assets/454acba8-362b-412f-9fa1-4f897ac2a5a9" />


### 🔹 Atualizar um Brinquedo (PUT)

curl -X PUT https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos/[ID] \
-H "Content-Type: application/json" \
-d '{
"nome": "Bola de Futebol Profissional",
"tipo": "Bola",
"classificacao": "Esportivo",
"tamanho": "M",
"preco": 85.00
}'

<img width="921" height="547" alt="image" src="https://github.com/user-attachments/assets/f6bc1e7b-0efa-48b7-b1e3-48a6c89be689" />

### 🔹 Atualizar parcialmente um Brinquedo (PATCH)

curl -X PATCH https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos/[ID] \
-H "Content-Type: application/json" \
-d '{
"tamanho": M
}'

<img width="916" height="600" alt="image" src="https://github.com/user-attachments/assets/b1022831-c763-4a6c-af80-04f195a7eb01" />


### 🔹 Listar Todos os Brinquedos

curl https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos

<img width="942" height="588" alt="image" src="https://github.com/user-attachments/assets/ef2844d2-0bf5-42d3-9775-7949acf2f4ef" />


### 🔹 Listar Brinquedo por Id

curl https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos/[ID]

<img width="929" height="586" alt="image" src="https://github.com/user-attachments/assets/cae86ef9-fefa-46ed-8f57-442e12c1c50b" />

### 🔹 Excluir um Brinquedo

curl -X DELETE https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos/[ID]

<img width="929" height="603" alt="image" src="https://github.com/user-attachments/assets/dc6990c5-f9ac-49fe-a764-9dbfae623eb6" />

---

## 🧸 Exemplos de Brinquedos para Teste

{
"nome": "Bola de Futebol Infantil",
"tipo": "Bola",
"classificacao": "Esportivo",
"tamanho": "P",
"preco": 49.90
},

{
"nome": "Tênis Infantil de Corrida",
"tipo": "Tênis",
"classificacao": "Esportivo",
"tamanho": "28",
"preco": 120.00
},

{
"nome": "Raquete de Tênis Infantil",
"tipo": "Raquete",
"classificacao": "Esportivo",
"tamanho": "Único",
"preco": 85.50
},

{
"nome": "Meias Esportivas Coloridas",
"tipo": "Meias",
"classificacao": "Esportivo",
"tamanho": "M",
"preco": 25.00
},

{
"nome": "Camiseta Esportiva Infantil",
"tipo": "Roupa",
"classificacao": "Esportivo",
"tamanho": "P",
"preco": 39.90
}

---
