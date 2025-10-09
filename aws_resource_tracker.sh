#!/bin/bash

#####################
#Author:Ishank
#Date:09-oct
#
#version:v1
#
#this script will report the AWS resource Usage
####################
#
#the resources that we are going to tack 
#AWS S3
#AWS LAMBDA
#AWS EC2 INSTANCE 
#AWS IAM USERS 
#
set -x
#list s3 buckets 
echo "Print list of s3 bucket"
aws s3 ls

#list ec2 instances
echo "Print list of ec2 instances" 
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda functions

echo "Print list of lambda-functions"
aws lambda list-functions

#list iam users 

echo "Print list of iam users"
aws iam list-users
