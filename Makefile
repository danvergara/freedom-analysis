.PHONY: up
## up: builds and runs all the containers declared at Docker Compose file
up:
	docker-compose up --build --detach

.PHONY: down
## down: stops and deletes the container, networks, volumes and images created by up
down:
	docker-compose down

.PHONY: help
## help: Prints this help message
help:
	@echo "Usage: \n"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'
