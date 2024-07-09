## components

|     component     |  namespace   |  version   |               chart               |
| ----------------- | ------------ | ---------- | --------------------------------- |
| mysql             | infra        | 8.0.32     |                                   |
| redis             | infra        | 6.2.12     |                                   |
| istio             | istio-system | 1.22.2     | ./infra/templates/istio/README.md |
| argo              | kubeflow     | v3.4.3     |                                   |
| training-operator | kubeflow     | v1-855e096 | 1.7.0:manifests                   |
| volcano           | kubeflow     | v1.9.0     | release-1.9:installer             |