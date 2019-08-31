FROM hasura/graphql-engine:latest

ENV DOCKERIZE_VERSION v0.6.1

RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
	mkdir -p /usr/local/bin && \
	tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
	rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

CMD ["graphql-engine", "serve"]
