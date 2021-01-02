
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD crawl.jar crawl.jar
ENV dburl=""
ENV username=""
ENV	password=""
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/crawl.jar"]
