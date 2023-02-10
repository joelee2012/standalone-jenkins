FROM jenkins/jenkins:2.375.3-lts-alpine

LABEL OWNER="Joe Lee"
LABEL MAINTAINER="Joe Lee"
LABEL EMAIL="lj_2005@163.com"
USER root
RUN apk update && \
    apk add --no-cache docker-cli \
    && rm -rf /tmp/* /var/cache/apk/*
USER jenkins
COPY ./plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt --verbose
#RUN CURL_RETRY=10 CURL_RETRY_DELAY=1 /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
