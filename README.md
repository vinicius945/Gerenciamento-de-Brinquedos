# 🧸 Brinquedos Revisão Java 2025 - API para Gestão de Brinquedos Esportivos Infantis

Projeto desenvolvido para o **Checkpoint 4 de Java Advamced**, que consiste em uma **API RESTful** para gerenciamento de brinquedos esportivos destinados a crianças de até 12 anos, contemplando **CRUD completo**, persistência no banco Oracle FIAP, validação e HATEOAS.

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

- Cadastro e gerenciamento de **brinquedos esportivos infantis**
- Persistência de dados em **Oracle Database** via **Spring Data JPA**
- Validação de campos utilizando **Jakarta Validation**
- Retorno de dados seguindo o padrão **HATEOAS** (nível de maturidade 3)
- Testes de API via **Insomnia** ou **Postman**
- Deploy em nuvem via Render ([Link do Deploy](https://brinquedos-revisao-java-cp4-2025.onrender.com))

---

## 🛠️ Tecnologias Utilizadas

- Desenvolvido via IntelliJ
- Java 17 + Spring Boot 3.x
- Spring Data JPA (com Oracle DB)
- Lombok para redução de boilerplate
- HATEOAS para links RESTful
- Maven para gerenciamento de dependências
- Deploy em nuvem (Render)

<img width="1020" height="621" alt="image" src="https://github.com/user-attachments/assets/77f39a31-7e16-4159-b713-29c62bbdc8ff" />

---

## 🗂️ Entidade

- **Brinquedo:** Representa um brinquedo esportivo infantil
    - Campos: `id`, `nome`, `tipo`, `classificacao`, `tamanho`, `preco`

---

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
