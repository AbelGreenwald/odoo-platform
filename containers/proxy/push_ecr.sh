#!/bin/bash

$(aws ecr get-login --no-include-email --region us-east-2)
docker build --no-cache -t haproxy .
docker tag haproxy:latest 806045647479.dkr.ecr.us-east-2.amazonaws.com/haproxy:latest 
docker push 806045647479.dkr.ecr.us-east-2.amazonaws.com/haproxy:latest
