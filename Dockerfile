FROM openjdk:17
EXPOSE 8080
ADD target/sidhulogapp-0.0.1-SNAPSHOT.jar sidhulogapp-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/sidhulogapp-0.0.1-SNAPSHOT.jar"]