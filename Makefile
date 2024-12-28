DOCKER_COMPOSE=docker compose -f docker-compose.yml

setup:
	./setup.sh

logs: ## Afficher les logs
	${DOCKER_COMPOSE} logs -f ${CONTAINER}

start:
	${DOCKER_COMPOSE} up -d

stop:
	${DOCKER_COMPOSE} down

restart: stop start