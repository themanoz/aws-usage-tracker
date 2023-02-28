# aws-usage-tracker

To track AWS usage using a bash script, you can use AWS CLI (Command Line Interface) which provides a command-line interface for interacting with AWS services.



This script uses the AWS CLI to retrieve the following information:

EC2 instance count: Uses the aws ec2 describe-instances command to list all EC2 instances in the specified region, and then counts the number of instance IDs returned using the wc command.

S3 bucket count and total size: Uses the aws s3api list-buckets command to list all S3 buckets in your account, and then counts the number of bucket names returned using the wc command. Then uses the aws s3api list-objects command to retrieve the total size of objects in one of your S3 buckets (replace <your-bucket-name> with the name of your bucket).

Lambda function count: Uses the aws lambda list-functions command to list all Lambda functions in the specified region, and then counts the number of function names returned using the wc command.
You can modify this script to track usage for other AWS services by changing the AWS CLI commands and options accordingly. Remember to replace <your-bucket-name> with the name of your S3 bucket.
