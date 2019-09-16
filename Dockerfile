ARG HASURA_VERSION

FROM hasura/graphql-engine:$HASURA_VERSION

ARG DOCKERIZE_VERSION

RUN wget --no-check-certificate \
	https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
	mkdir -p /usr/local/bin && \
	tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
	rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

CMD ["graphql-engine", "serve"]
