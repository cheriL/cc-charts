#!/bin/sh

REGISTRY=$1
PROJECT=cube-studio

docker tag mysql:8.0.32 $REGISTRY/$PROJECT/mysql:8.0.32
docker tag bitnami/redis:6.2.12 $REGISTRY/$PROJECT/redis:6.2.12
docker push $REGISTRY/$PROJECT/mysql:8.0.32
docker push $REGISTRY/$PROJECT/redis:6.2.12
## istio
docker tag docker.io/istio/pilot:1.22.2 $REGISTRY/istio/pilot:1.22.2
docker tag docker.io/istio/proxyv2:1.22.2 $REGISTRY/istio/proxyv2:1.22.2
docker push $REGISTRY/istio/pilot:1.22.2
docker push $REGISTRY/istio/proxyv2:1.22.2
