#!/bin/bash
echo "This is a docker script!"
docker login -u naica922 -p $DOCKER_PASSWORD
docker build -t naica922/app:latest .
docker push naica922/app:latest
docker pull naica922/app:latest
docker run -p 80:8080 naica922/app:latest