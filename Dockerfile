FROM centos
USER root
RUN yum install ansible -y
USER jenkins
