Serko dotnetcore application deployment

Kubernetes was used to deploy the serko helloworld application
in production.
Kubernetes was choosen as it abstracts deployments into high level objects
like pods, services, deployments, replicasets and port forwards.

The application was deployed using the blue/green deployment pattern.
from the files, blue.yaml is the deployment for blue deployment, while green.yaml is for green deployment.

the svc_helloworld.yaml is the service and loadbalancer for the application.
