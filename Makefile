build:
	docker-compose build
start:
	docker-compose up
bash:
	docker-compose exec web bash
database:
	docker-compose exec db psql -U postgres