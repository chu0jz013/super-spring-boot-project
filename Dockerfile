FROM openjdk
COPY target/*.jar /
CMD ["java", "-jar", "/app.jar"]