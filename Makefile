setup:
	docker volume create marketplace-backend-nodemodules
	docker volume create marketplace-frontend-nodemodules
install:
	docker compose -f docker-compose.builder.yml run --rm backend-install
	docker compose -f docker-compose.builder.yml run --rm frontend-install
dev:
	docker compose up