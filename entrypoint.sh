#!/bin/sh -l

ls /github/workspace

export AWS_ACCESS_KEY_ID="$1"
export AWS_SECRET_ACCESS_KEY="$2"

cp -a /github/workspace ./application

cd ./application

deployment_output=$(eb deploy)

export AWS_ACCESS_KEY_ID="****"
export AWS_SECRET_ACCESS_KEY="****"