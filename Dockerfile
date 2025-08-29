# Use a imagem oficial do OpenJDK
FROM openjdk:17-jdk-alpine

# Crie um diretório para a aplicação
WORKDIR /app

# Copie o arquivo JAR (substitua pelo nome do seu JAR)
COPY target/gerenciamento-brinquedos-0.0.1-SNAPSHOT.jar app.jar

# Execute a aplicação
USER 1000
ENTRYPOINT ["java","-jar","app.jar"]