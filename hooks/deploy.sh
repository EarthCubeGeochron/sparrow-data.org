#!/bin/bash

cd /code

echo $GITHUB_TOKEN | docker login docker.pkg.github.com -u $GITHUB_ACTOR --password-stdin
docker-compose build --pull frontend
docker-compose up --build --remove-orphans --force-recreate -d frontend
