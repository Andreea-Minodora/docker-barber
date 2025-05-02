FROM openjdk:17-jdk-slim

# Setează un director de lucru clar
WORKDIR /app

# Copiază doar JAR-ul generat
COPY build/libs/Barber-App-demo-0.0.1-SNAPSHOT.jar app.jar

# Expune portul pe care rulează aplicația
EXPOSE 8080

# Rulează aplicația Spring Boot
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "app.jar"]
