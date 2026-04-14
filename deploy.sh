#!/usr/bin env bash

export AWS_PROFILE=root-adm
echo "deploying with profile $AWS_PROFILE"

aws ecr get-login-password --region ap-southeast-2 | docker login --username AWS --password-stdin 978344289623.dkr.ecr.ap-southeast-2.amazonaws.com

docker build -t 978344289623.dkr.ecr.ap-southeast-2.amazonaws.com/mongo-back:latest

docker push 978344289623.dkr.ecr.ap-southeast-2.amazonaws.com/mongo-back:latest