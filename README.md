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
