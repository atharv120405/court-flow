# Use official Tomcat 10 image with Java 11/17
FROM tomcat:10.1-jdk17

# Remove default ROOT application to avoid mapping conflicts
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the pre-compiled WAR file into the container as the ROOT app
COPY ./dist/courtflow.war /usr/local/tomcat/webapps/ROOT.war

# Expose standard Web HTTP Port
EXPOSE 8080

# Spin up Tomcat
CMD ["catalina.sh", "run"]
