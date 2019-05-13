# devstats-kubernetes-dashboard

Kubernetes dashboard for DevStats kubernetes deployment


# Usage

- Run `AWS_PROFILE=profile_name KUBECONFIG=~/.kube/config_cluster_name ./create_dashboard.sh`. It created Kubenrtes dashboard exposed on localhost only.
- Run `AWS_PROFILE=profile_name KUBECONFIG=~/.kube/config_cluster_name ./get_token.sh` to get access token (this is executed by `create_dashboard.sh` as a last step). Copy `token: ` value.
- Run `AWS_PROFILE=profile_name KUBECONFIG=~/.kube/config_cluster_name ./run_dashboard.sh` to create `http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/` page. Navigate to this page and use `Token` authentication, paste token value and sign in.
- Terminate `./run_dashboard.sh` to turn kubernetes dashboard off.
- Run `AWS_PROFILE=profile_name KUBECONFIG=~/.kube/config_cluster_name ./delete_dashboard.sh` to delete Kubernetes dashboard and all its resources (optional).
