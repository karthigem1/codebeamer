FROM intland/codebeamer-git:22.10-SP3
LABEL maintainer="Karthikeyan Elangovan"

USER root
RUN chgrp -R 0 /home/appuser && \
   find /home/appuser -type d -exec chmod 770 {} \; && \
   find /home/appuser -type f -exec chmod 660 {} \; && \
   chmod 770 /home/appuser/*.sh && \
   chmod 770 /home/appuser/codebeamer/bin/* && \
   chmod -R 774 /home/appuser/codebeamer/logs

USER 1001:1001
RUN whoami
