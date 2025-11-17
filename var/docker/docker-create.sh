#!/usr/bin/env bash

docker kill postiz || true
docker rm postiz || true
# Only expose Nginx port (5000) to the host for security
# Backend (3000) and Frontend (4200) are internal services accessed through Nginx
# This follows the principle of least privilege by reducing the attack surface
docker create --name postiz -p 5000:5000 localhost/postiz
