#!/bin/sh
rm composer.lock
rm vendor -rf
rm Public -rf
docker-compose up -d --build
docker exec -it debian-core /bin/bash
