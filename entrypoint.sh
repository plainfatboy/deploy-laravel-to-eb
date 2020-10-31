#!/bin/sh

ls /github/workspace

export AWS_ACCESS_KEY_ID="$1"
export AWS_SECRET_ACCESS_KEY="$2"

cp -a /github/workspace ./application

cd ./application

deployment_output=$(eb deploy)

if [[ ! deployment_output =~ "deployment completed successfully" ]]
then
    echo "Failed to deploy!!! Please check the detailed error in AWS console...."
    exit 1
fi

export AWS_ACCESS_KEY_ID="****"
export AWS_SECRET_ACCESS_KEY="****"