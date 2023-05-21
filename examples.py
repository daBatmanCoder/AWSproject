"""
This file contains a few examples for the project's necessary services.
"""

import boto3

# Print all buckets in s3

""" s3 = boto3.resource('s3')
for bucket in s3.buckets.all():
    print(bucket.name)  """

# Detect faces using rekognition
# Make sure the specified file is in the specified S3 bucket
""" client = boto3.client('rekognition')
response = client.detect_faces(
    Image={
        'S3Object': {
            'Bucket': 'ds-ps-group1',
            'Name': 'group.jpg',
        },
    },
)
print(response) """