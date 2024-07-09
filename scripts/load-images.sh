#!/bin/sh

REGISTRY=$1
PROJECT=cube-studio

docker tag mysql:8.0.32 $REGISTRY/$PROJECT/mysql:8.0.32
docker tag bitnami/redis:6.2.12 $REGISTRY/$PROJECT/redis:6.2.12

docker push $REGISTRY/$PROJECT/mysql:8.0.32
docker push $REGISTRY/$PROJECT/redis:6.2.12