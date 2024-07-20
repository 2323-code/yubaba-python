.PHONY: up down app stop

up:
	@docker compose up -d

bup:
	@docker compose up --build -d

app:
	@docker compose exec app bash

stop:
	@docker compose stop

ps:
	@docker compose ps

down:
	@docker compose down

