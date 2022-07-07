FROM intland/codebeamer:21.04-SP2
ADD --chown=1001:1001 https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.25/mysql-connector-java-8.0.25.jar /home/appuser/codebeamer/tomcat/webapps/ROOT/WEB-INF/lib/
RUN ls -lah /home/appuser/codebeamer/
RUN chmod -R 0777 /home/appuser/ 
RUN ls -lah /home/appuser/
USER 1001:1001
RUN whoami