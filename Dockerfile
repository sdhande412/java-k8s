FROM openjdk:11.0.3-jdk-slim
ADD target/ project.artifact.jar  project.artifact.jar
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /var/www/app.jar" ]
