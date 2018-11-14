FROM jboss/keycloak:latest

LABEL maintainer="ZOOM International, (c) 2002 ZOOM International"

# temporary
# COPY import-realm.json /opt/jboss/keycloak/

COPY import-realm.json.tpl /opt/jboss/keycloak/setup/templates/
COPY render-realm.py /opt/jboss/keycloak/setup/
COPY keycloak-metrics-provider-1.0.0.jar /opt/jboss/keycloak/standalone/deployments/prometheus-metrics-1.0.0.jar

# chmod??? 

USER root

RUN chmod o+w -R /opt/jboss/keycloak/setup

RUN yum install -y python-pip && pip install --upgrade pip
RUN pip install Jinja2

USER 1000

EXPOSE 8080

CMD ["-b", "0.0.0.0"]

