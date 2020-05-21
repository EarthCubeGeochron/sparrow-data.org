include .env
export

all:
	echo $(GITHUB_TOKEN) | docker login docker.pkg.github.com -u $(GITHUB_ACTOR) --password-stdin
	docker-compose up --build -d
	docker-compose logs -f
