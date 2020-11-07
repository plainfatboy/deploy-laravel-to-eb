#!/bin/bash

export AWS_ACCESS_KEY_ID="$1"
export AWS_SECRET_ACCESS_KEY="$2"

cd /github/workspace

echo $(cat /github/workspace)

# eb init --region "ap-southeast-1" -p "PHP 7.4 running on 64bit Amazon Linux 2" -k "deploy" CakeFulfillment
# eb deploy

# deployment_output=$(eb deploy)

# if [[ ! deployment_output =~ "deployment completed successfully" ]] :
# then
#     echo "Failed to deploy!!! Please check the detailed error in AWS console...."
#     exit 1
# fi

export AWS_ACCESS_KEY_ID="****"
export AWS_SECRET_ACCESS_KEY="****"