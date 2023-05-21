import os
from redis.cluster import RedisCluster
import base64
from io import BytesIO
from PIL import Image

host = 'image-cluster-0001-001.wexg8l.0001.use1.cache.amazonaws.com' #subject to change
port = 6379
img_path = ''

def main():

    rc = RedisCluster(
        host=host,
        port=port,
        decode_responses = True,
        skip_full_coverage_check=True,
        )

    for filename in os.listdir(img_path):
        with Image.open(os.path.join(img_path, filename)) as img:
            buffer = BytesIO()
            img.save(buffer, 'JPEG')
            img_str = base64.b64encode(buffer.getvalue())
            rc.set(filename, img_str)

    rc.close()

main()
