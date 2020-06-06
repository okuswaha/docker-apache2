#!/bin/bash
docker container prune -f
docker rmi apache2
docker build -t apache2 apache2
docker run -dt --name apache2 -p 8080:80 apache2
