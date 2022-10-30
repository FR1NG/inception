
IMAGES=${shell docker images -aq}
CONTAINERS=${shell docker container ls -aq}

build : 
	docker compose up --build

rmi:
	docker rmi -f $(IMAGES)

rmc:
	docker rm -f $(CONTAINERS)

rma: rmi rmc

rmv:
	docker compose down -v

down:
	docker compose down

purge:
	docker system prune -a

.PHONY: test
