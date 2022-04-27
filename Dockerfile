FROM node:16-bullseye-slim



# For Personal needs. You can replace the RUN by 
# RUN npm install --global @datadog/datadog-ci

RUN apt-get update && \
	apt-get install -y git jq curl gnupg && \
	curl https://baltocdn.com/helm/signing.asc | apt-key add - && \
	apt-get install apt-transport-https --yes && \
	echo "deb https://baltocdn.com/helm/stable/debian/ all main" | tee /etc/apt/sources.list.d/helm-stable-debian.list && \
	apt-get update && \
	apt-get install -y helm && \
	apt-get clean && \
	rm -rf /var/lib/opt/lists/* && \
	npm install --global @datadog/datadog-ci
    
USER node
WORKDIR /app
ENTRYPOINT "/bin/bash"
