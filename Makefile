build:
	docker-compose build
start:
	docker-compose up
bash:
	docker-compose run web bash
specs:
	docker-compose run bundle exec rspec specs