from PIL import Image
import boto3
import uuid
import io

region = "us-east-1"

def load_images(bucket, paths):
    """
    Load multiple images from a S3 bucket
    """
    s3 = boto3.resource("s3", region_name=region)
    bucketObj = s3.Bucket(bucket)
    loaded_images = []
    for i in paths:
        object = bucketObj.Object(i)
        response = object.get()
        stream = response['Body']
        image = Image.open(stream)
        loaded_images.append(image)
    return loaded_images

def resize_to_biggest(images):
    """
    Resize Images to be as wide as the largest one so they fit together.
    Assumes the images to be squares.
    Returns the width/height after resizing and the resized images.
    """
    biggest_size = 0
    result_images = []
    for i in images:
        width, _ = i.size
        if width > biggest_size:
            biggest_size = width

    for i in images:
        resized_image = i.resize((biggest_size, biggest_size), reducing_gap=3.0)
        result_images.append(resized_image)

    return biggest_size, result_images

def make_collage(image_size, images):
    """
    Make a collage from multiple images. Arrays the images in a two column format.
    """
    collage = Image.new("RGB", (image_size * 2, image_size * (len(images) // 2)))

    k = 0
    for i in range(len(images) // 2):
        x = i * image_size
        for j in range(2):
            y = j * image_size
            collage.paste(images[k], (y, x))
            k += 1

    return collage

def save_collage(bucket, collage, emotion):
    """
    Save a collage as JPEG to a S3 bucket into a folder named 'collages'.
    Returns the filepath to the collage.
    """
    s3 = boto3.client("s3", region_name=region)
    buffer = io.BytesIO()

    collage.save(buffer, format="JPEG")
    buffer.seek(0)
    id = str(uuid.uuid4())
    filepath = "collages/" + id + "_" + emotion + ".jpg"
    s3.upload_fileobj(buffer, bucket, filepath)

    return filepath

def cloud_function(json_input):
    """
    bucket: The bucket where the files are stored.
    group: The group of files to make a collage out of.
    """
    bucket = json_input["bucket"]
    group = json_input["group"]

    # Processing
    images = group["Filenames"]
    emotion = group["Emotion"]

    # Make number of images even
    images = images[0:len(images) - (len(images) % 2)]

    if len(images) < 2:
        res = {
            "bucket": bucket,
            "collage": "Too few images to make a collage"
        }
        return res

    loaded_images = load_images(bucket, images)

    image_size, resized_images = resize_to_biggest(loaded_images)

    collage = make_collage(image_size, resized_images)

    collage_path = save_collage(bucket, collage, emotion)

    # return the result
    res = {
        "bucket": bucket,
        "collage": collage_path
    }
    return res
    
