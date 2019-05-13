#!/bin/bash
if ( [ -z "$AWS_PROFILE" ] || [ -z "$KUBECONFIG" ] )
then
  echo "$0: you should specify AWS_PROFILE=... and KUBECONFIG=..."
fi
kubectl proxy
