helmfile -f keycloak_deployment.yaml sync

helm list
helm delete keycloak-deployment --purge

helm repo list

kubectl describe po keycloak-deployment-0


kubectl delete statefulset keycloak-deployment
