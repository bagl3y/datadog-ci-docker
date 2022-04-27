FROM node:16-bullseye-slim



# For Personal needs. You can replace the RUN by 
# RUN	npm install --global @datadog/datadog-ci

RUN RUN apt-get update && \
	apt-get install -y jq && \
	apt-get clean && \
	rm -rf /var/lib/opt/lists/* && \
	npm install --global @datadog/datadog-ci

USER node
WORKDIR /app
ENTRYPOINT "/bin/bash"
