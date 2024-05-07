#!/bin/bash

#membuat docker image dari docker file
docker build -t ghcr.io/ilhamatsaris20/karsajobs:latest .
#login ke github container registry
echo $PASSWORD_DOCKER_HUB | docker login -u ilhamatsaris20 --password-stdin ghcr.io
#upload docker image ke github
docker push ghcr.io/ilhamatsaris20/karsajobs:latest