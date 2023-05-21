import boto3

#receive the analysis of an image inside of a bucket via AWS Rekognition
def cloud_function(json_input):
    image = json_input["image"]
    bucket = json_input["bucket"]

    client = boto3.client('rekognition')
    analysis = client.detect_faces(Image={'S3Object': {'Bucket': bucket, 'Name': image}},
        Attributes=['ALL'])

    result = {
        "image": image,
        "analyse": analysis
    }

    # return the result
    res = {
        "analysis": result
    }
    return res
