up:
	docker-compose up --build -d

down:
	docker-compose down

rails_console:
	docker-compose run --rm web bin/rails console

run_sidekiq:
	docker-compose run --rm web bin/bundle exec sidekid

web_sh:
	docker-compose exec web /bin/bash

restart: down up
