#!/bin/bash

cd /code
docker-compose build --pull frontend
docker-compose up --build --remove-orphans -d frontend
