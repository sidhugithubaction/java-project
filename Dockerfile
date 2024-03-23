FROM maven:3.9.6-eclipse-temurin-17 AS build
LABEL Maintainer="sidhusaiprasanth"
WORKDIR /opt
COPY . .
RUN mvn clean package

FROM openjdk:17
EXPOSE 8080
COPY --from=build /opt/target/sidhulogapp-0.0.1-SNAPSHOT.jar sidhulogapp-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/sidhulogapp-0.0.1-SNAPSHOT.jar"]