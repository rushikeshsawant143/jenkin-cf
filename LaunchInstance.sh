#!/bin/bash
ENVIRONMENT_NAME=$TEST_ENV
RegionName=us-east-1
aws cloudformation deploy --stack-name ec2instance --template-file 'EC2_instance.yml' --parameter-overrides EnvironmentName=$ENVIRONMENT_NAME Keyname=awskey2 --capabilities CAPABILITY_IAM --region ${RegionName}
