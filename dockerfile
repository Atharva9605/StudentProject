FROM jenkins/jenkins:lts

USER root

# Manually set Docker group ID (adjust if needed)
RUN groupadd -g 998 docker && \
    usermod -aG docker jenkins

USER jenkins
