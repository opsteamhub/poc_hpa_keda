# POC HPA Keda

## Kubernetes-based Event Driven Autoscaling

`KEDA` allows for fine grained autoscaling (including to/from zero) for event driven Kubernetes workloads. `KEDA` serves as a Kubernetes Metrics Server and allows users to define autoscaling rules using a dedicated Kubernetes custom resource definition.
`KEDA` can run on both the cloud and the edge, integrates natively with Kubernetes components such as the Horizontal Pod Autoscaler, and has no external dependencies.

Develop Proof of Concept to implement K8s `HPA` using custom Prometheus metrics. Generate a package artifact(Helm Chart) to deploy `KEDA` and create a documentation using `KEDA` to integrate with HPA.

[Keda to deploy a Kubernetes HPA](https://sysdig.com/blog/kubernetes-hpa-prometheus/)
