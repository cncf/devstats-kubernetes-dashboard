#!/bin/bash
if ( [ -z "$AWS_PROFILE" ] || [ -z "$KUBECONFIG" ] )
then
  echo "$0: you should specify AWS_PROFILE=... and KUBECONFIG=..."
fi
kubectl apply -f manifests/kubernetes-dashboard.yaml
kubectl apply -f manifests/admin_serviceaccount.yaml
kubectl apply -f manifests/admin_clusterrolebinding.yaml
./get_token.sh
