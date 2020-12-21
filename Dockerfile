FROM jenkins/jenkins:lts-alpine
COPY ./plugins.txt /usr/share/jenkins/ref/plugins.txt
USER root
RUN apk update && \
    apk add --no-cache docker-cli
USER jenkins
RUN  /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt


