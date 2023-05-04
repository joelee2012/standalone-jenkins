# Standalone Jenkins
This docker image is based on [latest Jenkins LTS Docker image](https://www.jenkins.io/changelog-stable/) with preinstalled plugins and docker client.


Preinstalled plugins are listed without dependencies
```
allure-jenkins-plugin
ansicolor
antisamy-markup-formatter
artifactory
badge
blueocean
blueocean-jira
build-name-setter
cloudbees-disk-usage-simple
cloudbees-folder
code-coverage-api
config-file-provider
configuration-as-code
configuration-as-code-groovy
copyartifact
credentials
dashboard-view
dependency-check-jenkins-plugin
dingding-notifications
docker-plugin
docker-workflow
email-ext
embeddable-build-status
gitlab-branch-source
gitlab-plugin
jacoco
jira
job-dsl
kubernetes
kubernetes-cli
kubernetes-client-api
kubernetes-credentials-provider
ldap
matrix-auth
next-build-number
performance
pipeline-maven
pipeline-npm
pipeline-stage-view
prometheus
robot
role-strategy
simple-theme-plugin
sloccount
sonar
ssh-agent
timestamper
workflow-aggregator
```

# Usage
## Installation
```
docker pull joelee2012/standalone-jenkins:2.387.2-lts-alpine
```
## start with docker-compose
install docker-compose and run `docker-compose up -d`, then access jenkins with http://localhost:8080
