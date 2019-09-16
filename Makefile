
include .env
export

SHELL := /bin/bash

.PHONY: build push release

build:
	docker build \
		--build-arg DOCKERIZE_VERSION=$$DOCKERIZE_VERSION \
		--build-arg HASURA_VERSION=$$HASURA_VERSION \
		-t $$IMAGE_NAME:$$IMAGE_VERSION \
		-t $$IMAGE_NAME:latest \
		.

push:
	docker push $$IMAGE_NAME

release: build push