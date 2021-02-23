
include .env
export

SHELL := /bin/bash

.PHONY: build release

build:
	docker buildx build \
		--build-arg DOCKERIZE_VERSION=$$DOCKERIZE_VERSION \
		--build-arg HASURA_VERSION=$$HASURA_VERSION \
		--platform linux/amd64 \
		--push \
		-t $$IMAGE_NAME:$$IMAGE_VERSION \
		-t $$IMAGE_NAME:beta \
		.

release: build
