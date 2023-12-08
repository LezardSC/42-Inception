.PHONY:	all re clean

all:	@docker compose ./srcs/docker-compose.yml --build

re:		@docker compose ./srcs/docker-compose.yml --build

clean:	