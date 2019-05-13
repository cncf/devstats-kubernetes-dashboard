#!/bin/bash
cncfkubectl.sh delete secret kubernetes-dashboard-certs -n kube-system
cncfkubectl.sh delete secret kubernetes-dashboard-csrf -n kube-system
cncfkubectl.sh delete serviceaccount kubernetes-dashboard -n kube-system
cncfkubectl.sh delete role kubernetes-dashboard-minimal -n kube-system
cncfkubectl.sh delete rolebinding kubernetes-dashboard-minimal -n kube-system
cncfkubectl.sh delete deployment kubernetes-dashboard -n kube-system
cncfkubectl.sh delete service kubernetes-dashboard -n kube-system

cncfkubectl.sh delete serviceaccount admin-user -n kube-system
cncfkubectl.sh delete clusterrolebinding admin-user -n kube-system
