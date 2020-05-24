# gin-greetings

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/shubhamtatvamasi/gin-greetings)](https://hub.docker.com/r/shubhamtatvamasi/gin-greetings)
[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/shubhamtatvamasi/gin-greetings?sort=semver)](https://hub.docker.com/r/shubhamtatvamasi/gin-greetings)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/shubhamtatvamasi/gin-greetings/latest)](https://hub.docker.com/r/shubhamtatvamasi/gin-greetings)
[![Docker Pulls](https://img.shields.io/docker/pulls/shubhamtatvamasi/gin-greetings)](https://hub.docker.com/r/shubhamtatvamasi/gin-greetings)
[![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/shubhamtatvamasi/gin-greetings/latest)](https://hub.docker.com/r/shubhamtatvamasi/gin-greetings)
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/shubhamtatvamasi/gin-greetings)](https://hub.docker.com/r/shubhamtatvamasi/gin-greetings)

deploy on docker
```bash
docker run -d -p 80:80 shubhamtatvamasi/gin-greetings
```

deploy on kubernetes
```bash
kubectl run gin-greetings --image=shubhamtatvamasi/gin-greetings --restart=Never --port=80 --expose

kubectl patch svc gin-greetings \
  --patch='{"spec": {"type": "NodePort"}}'

kubectl patch svc gin-greetings \
  --patch='{"spec": {"ports": [{"nodePort": 30000, "port": 80}]}}'
```
