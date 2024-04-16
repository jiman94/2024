FROM openjdk:8-jdk-stretch

#RUN apt-get update && apt-get upgrade -y && apt-get install -y vim

USER root
LABEL maintainer="Megazone"

ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV port 8888
ENV defaultlabel develop
ENV gitusername jenkins
ENV gitpassword jenkins

EXPOSE $port

CMD java -Dspring.cloud.config.server.git.default-label=$defaultlabel \
         -Dspring.cloud.config.server.git.username=$gitusername \
         -Dspring.cloud.config.server.git.password=$gitpassword \
         -Dserver.port=$port \
    -jar config_server.jar

COPY ./config_server.jar .
