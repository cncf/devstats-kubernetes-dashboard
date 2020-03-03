# devstats-kubernetes-dashboard

Kubernetes dashboard for DevStats kubernetes deployment


# Usage

- Run `./create_dashboard.sh`. It creates Kubernetes dashboard exposed on localhost only.
- Run `./get_token.sh` to get access token (this is executed by `create_dashboard.sh` as a last step). Copy `token: ` value.
- Run `./run_dashboard.sh` to create `http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/` page. Navigate to this page and use `Token` authentication, paste token value and sign in.
- Terminate `./run_dashboard.sh` to turn kubernetes dashboard off.
- Run `./delete_dashboard.sh` to delete Kubernetes dashboard and all its resources (optional).
