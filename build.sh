#!/bin/bash

cd hello
docker build --tag hello:latest .
nitro-cli build-enclave --docker-uri hello:latest --output-file /artifact/hello.eif > /artifact/result.txt
