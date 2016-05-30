#!/usr/bin/env bash
docker build -t django-app .
docker run -it \
-v /usr/src/app \
-v /usr/src/app/static \
--link mysql:mysql \
--link redis:redis \
django-app \
/bin/bash
