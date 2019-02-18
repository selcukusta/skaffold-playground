# Skaffold Playground

You can create a machine which has ready-use **Docker&Kubernetes&Skaffold** environment. Also sample *Python Flask application* to play on [Skaffold](http://skaffold.dev).

## Run

- Ensure that minikube is running properly;

`sudo minikube status`

```
host: Running
kubelet: Running
apiserver: Running
kubectl: Correctly Configured: pointing to minikube-vm at [MINIKUBE_IP_ADDRESS]
```

- **Deploy** and serve the sample application via Skaffold.

`sudo skaffold run` *Note: If you have TLS error while skaffold is trying to build local image, please retry the command again!*

- **Test** it from; `curl 172.81.81.2:31905` and wait to see: *Hey, we have Flask in a Docker container!*

- **Delete** if your test is OK! `sudo skaffold delete`