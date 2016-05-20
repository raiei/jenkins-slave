FROM ubuntu
RUN apt-get update && apt-get install -y openjdk-7-jdk
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN apt-get update && apt-get install -y git maven
ENV JENKINS_HOME /home/jenkins
RUN useradd -d "$JENKINS_HOME" -u 1000 -m -s /bin/bash jenkins
RUN echo "jenkins:Training!" | chpasswd
