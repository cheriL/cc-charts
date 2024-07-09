```
version=1.22.2

wget -c https://github.com/istio/istio/releases/download/$version/istioctl-$version-linux-amd64.tar.gz
tar zxfv istioctl-1.22.2-linux-amd64.tar.gz -C /usr/local/bin/

curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.22.2 TARGET_ARCH=x86_64 sh -

istioctl manifest generate --set values.global.jwtPolicy=first-party-jwt > install.yaml

## kubectl apply -f install.yaml
```