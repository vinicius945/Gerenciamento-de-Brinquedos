# Usa uma imagem base para compilar o código
FROM maven:3-openjdk-17-slim AS builder

# Define o diretório de trabalho
WORKDIR /app

# Copia o arquivo pom.xml para baixar as dependências
COPY pom.xml .

# Baixa as dependências do Maven
RUN mvn dependency:go-offline -B

# Copia o código-fonte da aplicação
COPY src ./src

# Empacota a aplicação em um arquivo .jar
RUN mvn clean package -DskipTests

# Usa uma imagem base menor para a execução do .jar
FROM openjdk:17-slim

# Define o diretório de trabalho
WORKDIR /app

# Expõe a porta que a aplicação usa
EXPOSE 8081

# Copia o arquivo .jar da etapa de build
COPY --from=builder /app/target/*.jar app.jar

# Define o comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]