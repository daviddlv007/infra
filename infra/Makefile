# Generales:

ENV_FILE=../.env

up:
	docker-compose --env-file $(ENV_FILE) up -d --build

down:
	docker-compose --env-file $(ENV_FILE) down

logs:
	docker-compose --env-file $(ENV_FILE) logs -f


# Backend:
run-backend:
	docker-compose --env-file $(ENV_FILE) run --rm backend bash


#Frontend:
run-frontend:
	docker-compose --env-file $(ENV_FILE) run --rm frontend bash