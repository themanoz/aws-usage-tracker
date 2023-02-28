#!/bin/bash

region="us-west-2"

# EC2 instance count
ec2_count=$(aws ec2 describe-instances --region $region --query 'Reservations[].Instances[].InstanceId' --output text | wc -w)
echo "EC2 instance count: $ec2_count"

# S3 bucket count and total size
s3_buckets=$(aws s3api list-buckets --query 'Buckets[].Name' --output text | wc -w)
s3_size=$(aws s3api list-objects --bucket <your-bucket-name> --query "[sum(Contents[].Size)]" --output text)
echo "S3 bucket count: $s3_buckets"
echo "S3 total size: $s3_size bytes"

# Lambda function count
lambda_count=$(aws lambda list-functions --region $region --query 'Functions[].FunctionName' --output text | wc -w)
echo "Lambda function count: $lambda_count"
