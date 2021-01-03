
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD front.jar front.jar
ENV dburl=""
ENV username=""
ENV	password=""
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/front.jar"]
