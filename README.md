# Datadog-CI Docker

👏 Just a slim container with NPM Datadog-CI Package in ! 👏

## Usage

Just run the container (eventualy with the env var)

```
docker run -it --rm \
-e DATADOG_SITE="datadoghq.eu" \ 
-e DATADOG_APP_KEY="xxxxxxxxxxxxxxxxxxxxxxxx" \
-e DATADOG_API_KEY="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" \
bagl3y/datadog-ci-docker:v1.0.3
```

in the container, run datadog-ci : 

```
datadog-ci synthetics run-tests --public-id "abc-def-hij"
```

You can add multiple public-id and multiple variable in one command : 

```
datadog-ci synthetics run-tests --public-id "abc-def-hij" --public-id "abc-def-hij" --public-id "abc-def-hij" --variable "URL=https://www.google.com"
```

And... That's all ! 

For all commands, options and env var , go to https://github.com/DataDog/datadog-ci