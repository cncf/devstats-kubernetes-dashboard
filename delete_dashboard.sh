#!/bin/bash
# objects created by kubernetes-dashboard.yaml
kubectl delete secret kubernetes-dashboard-certs -n kube-system
kubectl delete secret kubernetes-dashboard-csrf -n kube-system
kubectl delete serviceaccount kubernetes-dashboard -n kube-system
kubectl delete role kubernetes-dashboard-minimal -n kube-system
kubectl delete rolebinding kubernetes-dashboard-minimal -n kube-system
kubectl delete deployment kubernetes-dashboard -n kube-system
kubectl delete service kubernetes-dashboard -n kube-system
# objects created by admin service account and role binding
kubectl delete serviceaccount admin-user -n kube-system
kubectl delete clusterrolebinding admin-user -n kube-system
