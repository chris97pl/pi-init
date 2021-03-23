FROM arm64v8/openjdk:8-jdk-slim AS build

COPY target/*.jar /home

WORKDIR /home

CMD java -jar /home/nukkit-1.0-SNAPSHOT.jar