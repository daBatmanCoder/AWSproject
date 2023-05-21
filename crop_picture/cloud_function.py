from PIL import Image
from io import BytesIO
import boto3
import json

#store the given face into an S3 bucket
def storeFace(s3, bucket, face, i, image_path):

    buffer = BytesIO()
    face.save(buffer, 'JPEG')
    buffer.seek(0)
    s3.put_object(Bucket=bucket, Key="cropped/" + f"{image_path}_{i}.jpeg", Body=buffer)

#crop an image and fit it to a square for further usage
def cropFace(item, image, width, height):

    bounding_box = item['BoundingBox']
    left = int(width * bounding_box['Left'])
    top = int(height * bounding_box['Top'])
    width = int(width * bounding_box['Width']) + left
    height = int(height * bounding_box['Height']) + top

    box = (left, top, width, height)
    face = image.crop(box)
    face = face.resize((100,100))

    return face

#crop faces of given pictures and receive a list of faces with their emotions
def cloud_function(json_input):
    analysis = json_input["analysis"]
    bucket = json_input["bucket"]
    image_path = analysis["image"]
    analysis = analysis["analyse"]

    s3 = boto3.client('s3')

    file_stream = s3.get_object(Bucket=bucket, Key=image_path)['Body'].read()
    image = Image.open(BytesIO(file_stream))

    image_path = image_path.split('/')[1].split('.')[0]

    width, height = image.size
    res = []

    i = 1
    for item in analysis.get('FaceDetails'):
        face = cropFace(item, image, width, height)

        storeFace(s3, bucket, face, i, image_path)

        faces_path = "cropped/" + f"{image_path}_{i}.jpeg"
        emotions_list = item['Emotions']

        res.append({
            "Filename": faces_path,
            "Emotions": emotions_list
        })
        i+=1

    res = {
        "files": res
    }
    return res
