FROM node:16-bullseye-slim

RUN	npm install --global @datadog/datadog-ci

USER node
WORKDIR /app
ENTRYPOINT "/bin/bash"
