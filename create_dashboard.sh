#!/bin/bash
cncfkubectl.sh apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/aio/deploy/recommended/kubernetes-dashboard.yaml
cncfkubectl.sh apply -f admin_serviceaccount.yaml
cncfkubectl.sh apply -f admin_clusterrolebinding.yaml
./get_token.sh
