# Colima Nginx Ingress Controller

## How to

Install [Colima](https://github.com/abiosoft/colima)

Then, run `colima start --cpu 4 --memory 6 --kubernetes`

After the cluster is up, let's create the standar storage class that soma applications will use:

```sh
kubectl apply -f standard-storage-class.yaml
```

### How to export Nginx metrics to Prometheus

Apply the files inside this folder, executing:

```sh
kubectl apply -f colima_ingress_deploy.yaml
kubectl apply -f colima_ingress_svc.yaml
```

[Nginx Ingress Monitoring](https://kubernetes.github.io/ingress-nginx/user-guide/monitoring/)

[Install Nginx Ingress Controller](https://kubernetes.github.io/ingress-nginx/deploy/)

[PromCat.io](https://promcat.io/apps/nginx)

[Nginx Prometheus Exporter](https://github.com/nginxinc/nginx-prometheus-exporter)

#### How to test

After install the ingress, `colima` will use a valid IP on your local network that you can use to make all the tests
