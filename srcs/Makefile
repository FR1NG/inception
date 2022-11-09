
IMAGES=${shell docker images -aq}
CONTAINERS=${shell docker container ls -aq}
VOLUMS=srcs_data_volume srcs_db_volume
up: 
	docker compose up

mkdir:
	mkdir -p /home/${USER}/data/wordpress
	mkdir -p /home/${USER}/data/mariadb

build : mkdir
	@echo "building..."
	@docker compose up --build

rmi:
	docker rmi -f $(IMAGES)

rmc:
	docker rm -f $(CONTAINERS)

rma: rmi rmc

rmv:
	docker volume rm ${VOLUMS}

down:
	docker compose down

purge:
	docker system prune -a

.PHONY: test
