#!/bin/bash
ENVIRONMENT_NAME=$TEST_ENV
aws cloudformation deploy --stack-name ec2instance --template-file 'EC2_instance.yml' --parameter-overrides EnvironmentName=$ENVIRONMENT_NAME Keyname=awskey2 --capabilities CAPABILITY_IAM --region us-east-1
