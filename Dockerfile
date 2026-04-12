FROM maven:3.9.9-eclipse-temurin-21
WORKDIR /app
COPY . .
RUN mvn clean test
RUN mvn clean install -DskipTests
RUN ls
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]