FROM fabric8/jenkins-jnlp-client

RUN yum -y clean all;\
yum install -y curl;\
yum install -y java-1.8.0-openjdk*;\
yum -y clean all;

# Maven
RUN curl -L http://mirrors.ukfast.co.uk/sites/ftp.apache.org/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz | tar -C /opt -xzv

ENV M2_HOME /opt/apache-maven-3.3.9
ENV maven.home $M2_HOME
ENV M2 $M2_HOME/bin
ENV PATH $M2:$PATH
