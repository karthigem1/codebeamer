FROM intland/codebeamer-git:21.09-SP4
LABEL maintainer="Karthikeyan Elangovan"

ARG WEBSRVROOT=/home/appuser/codebeamer/tomcat/webapps/ROOT

RUN whoami
RUN ls -lah /home/appuser
RUN chmod -R 0777 /home/appuser
RUN chown 1001:0 -R /home/appuser
RUN ls -lah /home/appuser

USER 1001
RUN whoami