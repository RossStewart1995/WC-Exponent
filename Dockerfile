FROM adoptopenjdk/openjdk11:latest

COPY ./target/docker-spring-boot-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch docker-spring-boot-0.0.1-SNAPSHOT.jar'

ENTRYPOINT ["java","-jar","docker-spring-boot-0.0.1-SNAPSHOT.jar"]