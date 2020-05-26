all:
	scripts/build

rebuild:
	docker-compose run --service-ports webhook /code/hooks/deploy.sh
