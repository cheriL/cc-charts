## components

|     component     |  namespace   |  version   |               chart               |
| ----------------- | ------------ | ---------- | --------------------------------- |
| mysql             | infra        | 8.0.32     |                                   |
| redis             | infra        | 6.2.12     |                                   |
| istio             | istio-system | 1.22.2     | ./infra/templates/istio/README.md |
| cube-studio       | infra        | 2024.06.02 | cube-studio:96871ad               |
| argo              | kubeflow     | v3.4.3     |                                   |
| training-operator | kubeflow     | v1-855e096 | 1.7.0:manifests                   |
| volcano           | kubeflow     | v1.9.0     | release-1.9:installer             |

```
kubectl delete configmap kubernetes-config -n infra
kubectl create configmap kubernetes-config --from-file=kubeconfig -n infra
kubectl delete configmap kubernetes-config -n pipeline
kubectl create configmap kubernetes-config --from-file=kubeconfig -n pipeline
kubectl delete configmap kubernetes-config -n automl
kubectl create configmap kubernetes-config --from-file=kubeconfig -n automl

helm install infra ./infra --namespace=infra
helm install kubeflow ./kubeflow --namespace=kubeflow
helm install volcano ./volcano --namespace=kubeflow
helm install monitor ./monitor
```
