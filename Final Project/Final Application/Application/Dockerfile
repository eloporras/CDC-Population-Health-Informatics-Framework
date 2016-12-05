FROM amazonlinux

# Install Dependencies
RUN yum update -y
RUN yum install java-1.8.0-openjdk -y
RUN yum install tomcat8 -y
RUN yum install tomcat8-admin-webapps -y
RUN yum install postgresql -y
RUN yum install php56-pgsql -y
RUN yum install php-cgi -y
RUN yum install git -y

# Set Java Home
ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0-openjdk.x86_64/bin

# Configure the Hapi Fhir Server
RUN mkdir /usr/share/tomcat8/target
RUN chmod 777 /usr/share/tomcat8/target
RUN mkdir /usr/share/tomcat8/webapps/fhir-app

# Start the tomcat server
RUN service tomcat8 start 

# Install app
ADD src/fhir-app /usr/share/tomcat8/webapps/fhir-app
ADD hapi-fhir-jpaserver-example.war /usr/share/tomcat8/webapps
ADD src/config/tomcat-users.xml /usr/share/tomcat8/conf/tomcat-users.xml

# Expose the port for webapp
EXPOSE 8080


