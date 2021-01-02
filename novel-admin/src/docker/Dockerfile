
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD admin.jar admin.jar
ENV dburl=""
ENV username=""
ENV	password=""
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/admin.jar"]
