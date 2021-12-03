FROM jenkins/jenkins:2.319.1-lts-alpine

LABEL OWNER="Joe Lee"
LABEL MAINTAINER="Joe Lee"
LABEL EMAIL="lj_2005@163.com"

ADD ./plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt --verbose
RUN CURL_RETRY=10 CURL_RETRY_DELAY=1 /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
