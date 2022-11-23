# Minikube Nginx Ingress Controller

## How to

Install [Minikube](https://minikube.sigs.k8s.io/docs/start/)

Then, run `minikube addons enable ingress metrics-server`

### To export Nginx metrics to Prometheus

Apply the files inside this folder, executing:

```sh
kubectl apply -f nginx/minikube_ingress_deploy.yaml
kubectl apply -f nginx/minikube_ingress_svc.yaml
```

[Nginx Ingress Monitoring](https://kubernetes.github.io/ingress-nginx/user-guide/monitoring/)

[Install Nginx Ingress Controller](https://kubernetes.github.io/ingress-nginx/deploy/)

[PromCat.io](https://promcat.io/apps/nginx)

[Nginx Prometheus Exporter](https://github.com/nginxinc/nginx-prometheus-exporter)

#### How to test

Run `minikube tunnel` in a ***separate terminal***( After the addon is enabled, please run `minikube tunnel` and your ingress resources would be available at ***127.0.0.1***)
