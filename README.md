# FH Phone Normalizer

## Getting started
```
docker build -t fh-phone-normalizer .

docker run --rm -it -p 4567:4567  -v "$PWD:/usr/src/app" fh-phone-normalizer

curl localhost:4567
```

## Run tests
```
docker run --rm -it -p 4567:4567  -v "$PWD:/usr/src/app" fh-phone-normalizer rspec
```

## Continuous Integration
```
docker compose-up

fly -t fh-phone-normalizer login --concourse-url http://[ip-adress]:8080
fly set-pipeline -t fh-phone-normalizer -p fh-pipeline -c pipeline.yml --load-vars-from credentials.yml
```

There was an issue with Docker for Mac, this solved it:
https://github.com/concourse/concourse/issues/927
