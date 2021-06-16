#!/bin/bash
ENVIRONMENT_NAME=$TEST_ENV
region=us-east-1

aws cloudformation deploy \
      --template-file EC2_instance.yml \
      --stack-name ec2instance \
      --capabilities CAPABILITY_NAMED_IAM \
      --region ${region} \
      --parameter-overrides KeyName=${awskey2}
      
