kubectl apply -f rbac-tiller.yaml
kubectl apply -f cluster-admin.yaml
kubectl apply -f helm-rbac.yaml
helm init --service-account tiller
sleep 10
kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.7/deploy/manifests/00-crds.yaml
kubectl create namespace cert-manager
kubectl label namespace cert-manager certmanager.k8s.io/disable-validation=true
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm install --name cert-manager --namespace cert-manager --version v0.7.0 jetstack/cert-manager
sleep 10
kubectl apply -f cluster-issuer.yaml 
kubectl apply -f certificates.yaml 

helm install stable/nginx-ingress --namespace kube-system --set controller.replicaCount=2 --name ingressdevops
sleep 10

kubectl apply -f cluster-issuer.yaml
kubectl apply -f certificates.yaml
kubectl create secret docker-registry acr --docker-server=aksacrphxapp.azurecr.io --docker-username=aksacrphxapp --docker-password=hpssbFJL=VUVF5SOQJo+RTY6R6eEcxGI
kubectl create secret generic coredevopsstorage-fileshare --from-literal=azurestorageaccountname=lgadevops --from-literal=azurestorageaccountkey=/d3/bSzY7ykRVQ/MU1CWAeQ2wo/xcoyGP8ir4+gpVdlaUDshfvxQX3AJOwM6YnVoHt3ff9KeH8s5JRgwCUt58A==

