
include .env
export

SHELL := /bin/bash

.PHONY: build push release

build:
	docker build \
		--build-arg DOCKERIZE_VERSION=$$DOCKERIZE_VERSION \
		--build-arg HASURA_VERSION=$$HASURA_VERSION \
		-t $$IMAGE_NAME:$$IMAGE_VERSION \
		-t $$IMAGE_NAME:beta \
		.

push:
	docker push $$IMAGE_NAME:$$IMAGE_VERSION
	docker push $$IMAGE_NAME:beta

release: build push
