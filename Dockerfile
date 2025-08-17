# Etapa de build
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -q -e -DskipTests clean package

# Etapa de runtime
FROM eclipse-temurin:21-jre
WORKDIR /app
EXPOSE 8081
COPY --from=build /app/target/brinquedos-revisao-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app/app.jar"]
