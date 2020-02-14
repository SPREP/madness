-include env_make

.PHONY: test up php drush stop logs

drupal ?= 8
php ?= 7.1

default: test

test:
	cd ./test/$(drupal)/$(php) && ./run.sh

up:
	docker-compose up -d

php:
	docker-compose exec php sh

ART=""
drush:
	docker-compose exec php drush $(ART)

stop:
	docker-compose stop

down:
	docker-compose down

logs:
	docker-compose logs -f
