#!/bin/bash
kubectl apply -f manifests/kubernetes-dashboard.yaml
kubectl apply -f manifests/admin_serviceaccount.yaml
kubectl apply -f manifests/admin_clusterrolebinding.yaml
./get_token.sh
