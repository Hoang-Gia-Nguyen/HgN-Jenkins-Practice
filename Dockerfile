FROM jenkins/jenkins:2.555.2
USER root
RUN apt-get update && apt-get install -y docker.io
USER jenkins

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
