# standalone-jenkins
The [latest Jenkins LTS Docker image](https://www.jenkins.io/changelog-stable/) with preinstalled plugins and Docker in Docker client.


Following are preinstalled plugins without listing dependencies
```
ansicolor
antisamy-markup-formatter
artifactory
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

## standalon mode
install docker compose and run `docker-compose up`
