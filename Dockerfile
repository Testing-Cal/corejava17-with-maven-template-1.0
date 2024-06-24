FROM amazoncorretto:17-alpine
ENV context ""
ENV port 8022
ADD /src/main/resources/application.properties //
ADD /target/corejava17-with-maven-template-1.0-SNAPSHOT-jar-with-dependencies.jar //
ENTRYPOINT ["java","-jar", "/corejava17-with-maven-template-1.0-SNAPSHOT-jar-with-dependencies.jar","--server.port=${port}"]

