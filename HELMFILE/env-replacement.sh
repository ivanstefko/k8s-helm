#!/usr/bin/env bash
set -eu

sed -i 's/ZOOM/ZOOM-TEST/g' /opt/jboss/keycloak/import-realm.json
exit