#!/bin/bash

git clone https://github.com/karthequian/docker-helloworld.git

cd docker-helloworld
docker build --tag hello:latest .
nitro-cli build-enclave --docker-uri hello:latest --output-file /artifact/hello.eif
