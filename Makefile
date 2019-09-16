
include .env
export

SHELL := /bin/bash

.PHONY: build

build:
	docker build \
		--build-arg DOCKERIZE_VERSION=$$DOCKERIZE_VERSION \
		--build-arg HASURA_VERSION=$$HASURA_VERSION \
		-t $$IMAGE_NAME \
		.
