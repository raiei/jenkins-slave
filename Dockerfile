FROM ubuntu
RUN apt-get update
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN apt-get install -y openjdk-6-jdk
ENV JENKINS_HOME /var/jenkins_home
RUN useradd -d "$JENKINS_HOME" -u 1000 -m -s /bin/bash jenkins
CMD ["/usr/sbin/sshd"]
