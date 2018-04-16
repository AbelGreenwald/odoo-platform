#!/bin/bash

$(aws ecr get-login --no-include-email --region us-east-2)
docker build --no-cache -t fail2ban .
docker tag fail2ban:latest 806045647479.dkr.ecr.us-east-2.amazonaws.com/fail2ban:latest 
docker push 806045647479.dkr.ecr.us-east-2.amazonaws.com/fail2ban:latest