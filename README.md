# README

Dockerfile and docker-compose to build kali.

https://www.kali.org/docs/containers/using-kali-docker-images/


```
# 1. Create the volume directory
mkdir -p /home/myname/docker_config/kali_docker/volume

# 2. Build and launch (using the on-the-fly password)
# this is just a passwd for example purposes
USER_PASS=testpass123 sudo -E docker compose up -d --build

# 3. Enter the container
sudo docker exec -u heverz -it kali-lab /bin/bash
```
