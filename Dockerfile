FROM apache/nifi:latest

USER root

COPY drivers/postgresql-42.7.7.jar /opt/nifi/nifi-current/lib/
RUN chown nifi:nifi /opt/nifi/nifi-current/lib/postgresql-42.7.7.jar

USER nifi
