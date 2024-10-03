#!/usr/bin/python3

import boto3

s3 = boto3.client('s3', region_name='us-east-1')

url = 'https://images.app.goo.gl/XYj2SQhxsVNR3QcN7'

import urllib.request

urllib.request.urlretrieve('https://images.app.goo.gl/XYj2SQhxsVNR3QcN7', filename= 'spacelab.jpg')

bucket = 'ds2022-hta4yb'
local_file = 'spacelab.jpg'

resp = s3.put_object(
	Body = local_file,
	Bucket = bucket,
	Key = local_file
)

response = s3.generate_presigned_url(
	'get_object',
	Params={'Bucket': bucket, 'Key': local_file},
	ExpiresIn= 604800
)

print(response)

#https://ds2022-hta4yb.s3.amazonaws.com/spacelab.jpg?AWSAccessKeyId=AKIATG6MGHC55T5F56W7&Signature=aXV6wD7Q09JgmmOz1wXHknpP6mg%3D&Expires=1728597077
