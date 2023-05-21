import boto3

#function to receive the filenames of the pictures in the given bucket/folder
def cloud_function(json_input):
    bucket = json_input["bucket"]
    folder = json_input["folder"]

    s3 = boto3.resource('s3')
    s3_bucket = s3.Bucket(bucket)

    files_in_s3 = [f.key.split(folder)[1] for f in s3_bucket.objects.filter(Prefix=folder).all()]
    files_in_s3.pop(0)

    files_in_s3 = [folder + sub for sub in files_in_s3]

    # return the result
    res = {
        "images": files_in_s3
    }
    return res
