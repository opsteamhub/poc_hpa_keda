# Wildcard Localhost Endpoints

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
