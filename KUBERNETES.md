# 📦 Kubernetes Deployment for IoT Java App

This file explains how the Dockerized Spring Boot app is deployed to Kubernetes using two YAML files.

---

## Files Used

We use two files inside a folder called `k8s/`:

- `deployment.yaml`: runs the Java app in a container
- `service.yaml`: makes the app accessible using a LoadBalancer

---

##  Docker Image

The Kubernetes deployment expects this Docker image:
your-dockerhub-username/iot-java-app:latest 

##  How to Deploy (Optional)

If you have a Kubernetes cluster and `kubectl` installed, you can deploy by running this in the terminal:

```bash
kubectl apply -f k8s/

---

To check if the app is running:
kubectl get pods
kubectl get services

If LoadBalancer is supported, access the app at:
http://<load-balancer-ip>/hello

To delete everything:
kubectl delete -f k8s/

