FROM intland/codebeamer-git:22.10-SP3
LABEL maintainer="Karthikeyan Elangovan"

USER root
RUN chgrp -R 0 /home/appuser && \
   find /home/appuser -type d -exec chmod 770 {} \; && \
   find /home/appuser -type f -exec chmod 660 {} \; && \
   chmod 770 /home/appuser/*.sh && \
   chmod 770 /home/appuser/codebeamer/bin/* && \
   chmod -R 774 /home/appuser/codebeamer/logs

ARG UID=41812
ARG GID=41812

# Setup users and groups
RUN groupadd -r -g ${GID} splunk \
    && useradd -r -m -u ${UID} -g ${GID} -s /bin/bash splunk \
    && chmod 755 /home/appuser/codebeamer/logs \
    && chown -R 1001:41812 /home/appuser/codebeamer/logs

RUN ls -lah /home/appuser/codebeamer/logs

USER 1001:1001
RUN whoami
