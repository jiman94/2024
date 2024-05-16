FROM tomcat:8.5.35-jre8
VOLUME /tmp

ENV TZ Asia/Seoul

# Add tomcat server.xml
ADD /tomcat/*.xml /usr/local/tomcat/conf/

RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD /target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN chmod +x /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080 8000
CMD ["catalina.sh", "run"]