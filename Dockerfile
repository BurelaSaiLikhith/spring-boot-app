FROM openjdk:11
VOLUME /tmp
EXPOSE 9191
ARG JAR_FILE=target/spring-boot-docker.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
