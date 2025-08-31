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

<img width="1020" height="621" alt="image" src="https://github.com/user-attachments/assets/77f39a31-7e16-4159-b713-29c62bbdc8ff" />

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
-d '{
"nome": "Bola de Futebol Infantil",
"tipo": "Bola",
"classificacao": "Esportivo",
"tamanho": "P",
"preco": 49.90
}'

<img width="1365" height="680" alt="image" src="https://github.com/user-attachments/assets/ea9f942f-c5aa-4bc6-9cf2-b472ebf6c7af" />

### 🔹 Atualizar um Brinquedo (PUT)

curl -X PUT https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos/[ID] \
-H "Content-Type: application/json" \
-d '{
"nome": "Bola de Futebol Profissional",
"tipo": "Bola",
"classificacao": "Esportivo",
"tamanho": "M",
"preco": 79.90
}'

<img width="1365" height="680" alt="image" src="https://github.com/user-attachments/assets/c9448e7b-20db-45e0-9d2a-58dc0abc0400" />

### 🔹 Atualizar parcialmente um Brinquedo (PATCH)

curl -X PATCH https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos/[ID] \
-H "Content-Type: application/json" \
-d '{
"preco": 59.90
}'

<img width="1365" height="679" alt="image" src="https://github.com/user-attachments/assets/08f96405-3943-4706-a85a-08d272d64ea8" />

### 🔹 Listar Todos os Brinquedos

curl https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos

<img width="1365" height="679" alt="image" src="https://github.com/user-attachments/assets/f5076ac2-71af-4c62-a9b1-802b7ead91eb" />

### 🔹 Listar Brinquedo por Id

curl https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos/[ID]

<img width="1365" height="681" alt="image" src="https://github.com/user-attachments/assets/c6befc16-e1ef-4308-91b6-e21d13ff0591" />

### 🔹 Excluir um Brinquedo

curl -X DELETE https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos/[ID]

<img width="1365" height="678" alt="image" src="https://github.com/user-attachments/assets/952aaf2f-70d9-47aa-af12-f836db504e9e" />

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

O projeto foi deployado utilizando o Render.

🔗 Link de acesso: [https://brinquedos-revisao-java-cp4-2025.onrender.com](https://brinquedos-revisao-java-cp4-2025.onrender.com)
