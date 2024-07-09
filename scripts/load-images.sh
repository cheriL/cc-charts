#!/bin/sh

REGISTRY=$1
PROJECT=cube-studio

docker tag mysql:8.0.32 $REGISTRY/$PROJECT/mysql:8.0.32
docker tag bitnami/redis:6.2.12 $REGISTRY/$PROJECT/redis:6.2.12
docker push $REGISTRY/$PROJECT/mysql:8.0.32
docker push $REGISTRY/$PROJECT/redis:6.2.12

# istio
docker tag docker.io/istio/pilot:1.22.2 $REGISTRY/istio/pilot:1.22.2
docker tag docker.io/istio/proxyv2:1.22.2 $REGISTRY/istio/proxyv2:1.22.2
docker push $REGISTRY/istio/pilot:1.22.2

# argo
docker tag argoproj/argoexec:v3.4.3 $REGISTRY/argoproj/argoexec:v3.4.3
docker tag argoproj/workflow-controller:v3.4.3 $REGISTRY/argoproj/workflow-controller:v3.4.3
docker tag minio/minio:RELEASE.2023-04-20T17-56-55Z $REGISTRY/minio/minio:RELEASE.2023-04-20T17-56-55Z
docker push $REGISTRY/argoproj/argoexec:v3.4.3
docker push $REGISTRY/argoproj/workflow-controller:v3.4.3
docker push $REGISTRY/minio/minio:RELEASE.2023-04-20T17-56-55Z

# kubeflow
docker tag kubeflow/training-operator:v1-855e096 $REGISTRY/kubeflow/training-operator:v1-855e096
docker push $REGISTRY/kubeflow/training-operator:v1-855e096