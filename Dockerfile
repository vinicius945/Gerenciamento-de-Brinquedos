# Use a imagem oficial do OpenJDK 17
FROM openjdk:17-jdk-alpine

# Diretório da aplicação dentro do container
WORKDIR /app

# Copie o JAR compilado
COPY target/Gerenciamento-de-Brinquedos-0.0.1-SNAPSHOT.jar app.jar

# Use usuário sem privilégios
USER 1000

# Comando para rodar a aplicação
ENTRYPOINT ["java","-jar","app.jar"]
