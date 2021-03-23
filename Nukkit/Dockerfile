FROM arm64v8/openjdk:8-jdk-slim AS build

COPY target/nukkit-1.0-SNAPSHOT.jar /home/nukkit.jar

WORKDIR /home

CMD java -jar /home/nukkit.jar