all:
	mkdir -p ~/data/nginx
	mkdir -p ~/data/wordpress
	mkdir -p ~/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml up -d --build

down:
	docker-compose -f ./srcs/docker-compose.yml down

nuke:
	docker-compose -f ./srcs/docker-compose.yml down
	docker system prune --all --volumes
	rm -rf ~/data

re: nuke all

.PHONY: all down nuke re
