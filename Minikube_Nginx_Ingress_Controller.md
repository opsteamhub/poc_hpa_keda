# Minikube Nginx Ingress Controller

## How to

Install [Minikube](https://minikube.sigs.k8s.io/docs/start/)

Then, run `minikube addons enable ingress metrics-server`

### To export Nginx metrics to Promethus

Apply the files inside this folder, executing:

```sh
kubectl apply -f nginx/minikube_ingress_deploy.yaml
kubectl apply -f nginx/minikube_ingress_svc.yaml
```

[Nginx Ingress Monitoring](https://kubernetes.github.io/ingress-nginx/user-guide/monitoring/)

[Install Nginx Ingress Controller](https://kubernetes.github.io/ingress-nginx/deploy/)

#### How to test

Run `minikube tunnel` in a ***separate terminal***( After the addon is enabled, please run `minikube tunnel` and your ingress resources would be available at ***127.0.0.1***)

##### Wildcard Localhost Endpoints

Localhost cannot handle multiple host( ****.test.com, *.example.localhost***), so, we can use some tools to enable this like `dnsmasq`:

The config below will enable we test localy any adress(subdomain) in ****.example.localhost(prometheus.example.localhost, grafana.example.localhost)***

```sh
# example.localhost will be resolved as 127.0.0.1, including subdomains
# https://hedichaibi.com/how-to-setup-wildcard-dev-domains-with-dnsmasq-on-a-mac/
address=/example.localhost/127.0.0.1
listen-address=127.0.0.1

neste arquivo /usr/local/etc/dnsmasq.conf

sudo services stop dnsmasq

sudo services start dnsmasq
```
