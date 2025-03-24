FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y docker.io
# Dynamically set the docker group GID to match the host and add the jenkins user to it
RUN DOCKER_GID=$(stat -c %g /var/run/docker.sock) && \
    groupadd -g $DOCKER_GID docker && \
    usermod -aG docker jenkins
USER jenkins