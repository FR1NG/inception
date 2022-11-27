
IMAGES=${shell docker images -aq}
CONTAINERS=${shell docker container ls -aq}
VOLUMS=srcs_data_volume srcs_db_volume monitoring_grafana_data srcs_adminer_volume
up: 
	docker compose up

mkdir:
	mkdir -p /home/${USER}/data/wordpress
	mkdir -p /home/${USER}/data/mariadb

build : mkdir
	@echo "building..."
	@docker compose up --build

reconfig : rmconf build

rmconf :
	sudo rm -rf /home/${USER}/data/wordpress/www/html/wp-config.php

rmi:
	docker rmi -f $(IMAGES)

rmc:
	docker rm -f $(CONTAINERS)

rma: rmc rmi rmv rmdir

rmv:
	docker volume rm ${VOLUMS}

down:
	docker compose down

rmdir:
	sudo rm -rf /home/${USER}/data/wordpress
	sudo rm -rf /home/${USER}/data/mariadb

purge: rma
	docker system prune -a

.PHONY: test
