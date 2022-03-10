FROM ubuntu
RUN apt update && \
apt install wget -y && \
apt install curl -y && \
apt install unzip -y && \
apt-get install bzip2 && \
apt install default-jdk -y && \
apt install maven -y && \
apt install git -y
RUN git clone https://github.com/Soorajnaik/Assignment.git
WORKDIR /Assignment/docker/maven
RUN mvn clean install
RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.16/bin/apache-tomcat-10.0.16.zip
RUN unzip apache-tomcat-10.0.16.zip
RUN cp /Assignment/docker/maven/target/webapp.war /Assignment/docker/maven/apache-tomcat-10.0.16/webapps
RUN chmod +x /Assignment/docker/maven/apache-tomcat-10.0.16/bin/catalina.sh
COPY tomcat-users.xml  /Assignment/docker/maven/apache-tomcat-10.0.16/conf/
COPY context.xml  /Assignment/docker/maven/apache-tomcat-10.0.16/webapps/host-manager/META-INF
COPY context.xml  /Assignment/docker/maven/apache-tomcat-10.0.16/webapps/manager/META-INF
CMD ["/Assignment/docker/maven/apache-tomcat-10.0.16/bin/catalina.sh", "run"]
