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

- Java 17 + Spring Boot 3.x
- Spring Data JPA (com Oracle DB)
- Lombok para redução de boilerplate
- HATEOAS para links RESTful
- Maven para gerenciamento de dependências
- Deploy em nuvem (Render)

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

### 🔹 Atualizar parcialmente um Brinquedo (PATCH)

curl -X PATCH https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos/[ID] \
-H "Content-Type: application/json" \
-d '{
"preco": 59.90
}'

### 🔹 Listar Todos os Brinquedos

curl https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos

### 🔹 Excluir um Brinquedo

curl -X DELETE https://brinquedos-revisao-java-cp4-2025.onrender.com/brinquedos/[ID]

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
