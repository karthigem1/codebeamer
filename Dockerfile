FROM intland/codebeamer-git:21.09-SP4
LABEL maintainer="Karthikeyan Elangovan"

ARG WEBSRVROOT=/home/appuser/codebeamer/tomcat/webapps/ROOT

RUN whoami
RUN ls -lah /home/appuser
RUN chmod -R 0777 /home/appuser
RUN chgrp -R 0 /home/appuser
RUN chmod -R g+rwX /home/appuser
RUN ls -lah /home/appuser

USER 1001
RUN whoami