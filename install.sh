#!/bin/sh
docker-compose up -d --build
docker exec -it debian-core /bin/bash
