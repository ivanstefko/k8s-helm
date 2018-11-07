FROM jboss/keycloak:latest

ENV KEYCLOAK_ADMIN_USER=admin
ENV KEYCLOAK_ADMIN_PASWORD=admin

ENV KEYCLOAK_REALM=import-realm.json

# RUN /opt/jboss/keycloak/bin/add-user-keycloak.sh -u $KEYCLOAK_ADMIN_USER -p $KEYCLOAK_ADMIN_PASWORD

COPY import-realm.json env-replacement.sh /opt/jboss/keycloak/
COPY env-replacement.sh /scripts/
#RUN chown jboss:root /opt/jboss/keycloak/{import-realm.json,env-replacement.sh}

# ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]

# CMD ["-b", "0.0.0.0", "-Dkeycloak.import=/opt/jboss/keycloak/import-realm.json"]
