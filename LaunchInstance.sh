#!/bin/bash
ENVIRONMENT_NAME="$TEST_ENV"

ls


aws cloudformation deploy --stack-name ec2instance --template-file 'EC2_instance.yml' --parameter-overrides EnvironmentName=$ENVIRONMENT_NAME Keyname=awskey2 --capabilities CAPABILITY_IAM --region $AWS_DEFAULT_REGION
