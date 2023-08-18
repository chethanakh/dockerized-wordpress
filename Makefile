#!/usr/bin/make

SHELL = /bin/sh

UID := $(shell id -u)
GID := $(shell id -g)

export UID
export GID

shell:
	docker exec -it wp-app bash

up:
	UID=${UID} GID=${GID} docker compose -f docker-compose.yml up --build -d --remove-orphans

down:
	docker-compose -f docker compose.yml down --remove-orphans
