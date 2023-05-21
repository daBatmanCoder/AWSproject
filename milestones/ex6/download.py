import os
from redis.cluster import RedisCluster
import base64
from io import BytesIO
from PIL import Image
import sys

host = 'image-cluster-0001-001.wexg8l.0001.use1.cache.amazonaws.com' #subject to change
port = 6379
img_path = ''

def main():
    if len(sys.argv) != 2:
        print('Input exactly one picture name as key!')
        return

    key = sys.argv[1]

    rc = RedisCluster(
        host=host,
        port=port,
        decode_responses = True,
        skip_full_coverage_check=True,
        )

    byte_data = rc.get(key)
    b = base64.b64decode(byte_data)
    img = Image.open(BytesIO(b))
    img.save(os.path.join(img_path, key))

    rc.close()

main()
