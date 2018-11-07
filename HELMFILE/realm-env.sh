#!/usr/bin/env bash

#REALM_INIT="REALM_NAME:ZOOM REALM | LDAP_USER_DN:OU=Prague,DC=testdomain,DC=cz | REALM_ID: ZOOM-REALM-ID"

# ------------------ functions ------------------

trim() {
  sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'
}

# -----------------------------------------------

IFS='|' read -ra ENVS <<< "$REALM_INIT"
#echo $REALM_INIT
#echo ${#ENVS[@]}

declare -A REALM_ENVS

for i in "${ENVS[@]}";
do
   env=$(echo -e $i | trim)
   #echo ">$env<";

   IFS=':' read -ra TUPLE <<< "$env"

   key=$(echo -e ${TUPLE[0]} | trim)
   value=$(echo -e ${TUPLE[1]} | trim)

   declare "REALM_ENVS[$key]=$value"

   #echo "-- ${TUPLE[0]}/${TUPLE[1]}"

done

#echo "-----------------------------"

for i in "${!REALM_ENVS[@]}"
do

  key=$i
  value=${REALM_ENVS[$i]}

  #echo "key  : $key"
  #echo "value: $value"

  sed -i "s/\${$key}/$value/g" import-realm.json

done
