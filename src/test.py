import boto3 
s3 = boto3.resource('s3')
# client = boto3.client('s3')
bucket = s3.Bucket('rawbucket912324234')
bucket.upload_file("data/ecom_data/customers.csv", "customers_new.csv")

