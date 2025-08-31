# 🧸 Brinquedos Revisão Java 2025 - API para Gestão de Brinquedos Esportivos Infantis

Este projeto é uma **API RESTful** para gerenciar brinquedos. A solução utiliza **Docker Compose** para orquestrar a aplicação Spring Boot e um banco de dados PostgreSQL em ambientes conteinerizados.


---

## 👨‍💻 Integrantes - Grupo LTAKN

- **Enzo Prado Soddano** – RM: 557937  
  [GitHub](https://github.com/DerBrasilianer)

- **Lucas Resende Lima** – RM: 556564  
  [GitHub](https://github.com/lucasresendelima)

- **Vinicius Prates Altafini** – RM: 559183  
  [GitHub](https://github.com/vinicius945)

---

## 📡 Sobre o Projeto

Esta solução foi desenvolvida com foco em boas práticas de arquitetura e tecnologias modernas, permitindo:

Cadastro e gerenciamento de brinquedos esportivos infantis: A aplicação continua cumprindo o seu objetivo principal, que é gerenciar os dados de brinquedos.

Persistência de dados em PostgreSQL: A persistência de dados foi migrada do Oracle DB para o PostgreSQL usando Spring Data JPA, de acordo com a sua nova arquitetura com Docker Compose.

Validação de campos utilizando Jakarta Validation: A validação de campos continua sendo um componente importante para a integridade dos dados da sua API.

Retorno de dados seguindo o padrão HATEOAS (nível de maturidade 3): A API continua fornecendo links HATEOAS para guiar o cliente, o que é uma prática avançada de desenvolvimento de APIs.

Testes de API via Insomnia ou Postman: A sua API pode ser testada com sucesso usando ferramentas como o Postman ou Insomnia.

Deploy em nuvem via Azure e Docker Compose: O processo de deploy agora utiliza Docker Compose, que pode ser executado em ambientes de nuvem como o Azure, proporcionando um deploy mais ágil e padronizado.

---

## 🛠️ Tecnologias Utilizadas

- **Java 17** e **Spring Boot 3.x**
- **Docker** e **Docker Compose**
- **PostgreSQL**
- **Maven** para gerenciamento de dependências
---

## 🗂️ Entidade

- **Brinquedo:** Representa um brinquedo esportivo infantil
    - Campos: `id`, `nome`, `tipo`, `classificacao`, `tamanho`, `preco`

---
#Arquitetura Antiga:

<img width="464" height="175" alt="image" src="https://github.com/user-attachments/assets/91c41bdd-067c-4645-90a5-18f8e4413629" />

---

# Arquitetura nova:

<img width="771" height="201" alt="Diagrama sem título drawio" src="https://github.com/user-attachments/assets/acc2122c-edaa-4c76-9a6c-c05de20eec10" />


## ⚙️ Endpoints Principais (REST API)

| Método | Endpoint                 | Descrição                     |
|--------|--------------------------|-------------------------------|
| GET    | `/brinquedos`            | Listar todos os brinquedos    |
| GET    | `/brinquedos/{id}`       | Obter brinquedo por ID        |
| POST   | `/brinquedos`            | Criar novo brinquedo          |
| PUT    | `/brinquedos/{id}`       | Atualizar brinquedo completo  |
| PATCH  | `/brinquedos/{id}`       | Atualizar brinquedo parcial   |
| DELETE | `/brinquedos/{id}`       | Excluir brinquedo por ID      |

---

## 🧪 Exemplos de Uso (com cURL)

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

## 🚀 Deploy

Processo de Deploy
O processo de deploy deste projeto foi modernizado para ser simples, ágil e confiável, utilizando o Docker Compose. O arquivo docker-compose.yml automatiza a orquestração de todos os serviços, eliminando a necessidade de processos manuais.
