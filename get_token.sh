#!/bin/bash
if ( [ -z "$AWS_PROFILE" ] || [ -z "$KUBECONFIG" ] )
then
  echo "$0: you should specify AWS_PROFILE=... and KUBECONFIG=..."
fi
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}')
