"""
Utility script to download multiple sample images from google images.
"""

from google_images_download import google_images_download

images_per_category = 10
download_dir = "resources"

response = google_images_download.googleimagesdownload() 

search_queries = {
    "happy": "happy human face",
    "sad": "sad human face",
    "angry": "angry human face",
    "surprised": "surprised human face",
    "disgusted": "disgusted human face",
    "calm": "calm human face",
    "confused": "confused human face",
    "fear": "fear human face"
}

def download_images(name, query):
    args = { 
        "keywords": query,
        "limit":images_per_category,
        "output_directory": download_dir,
        "no_directory": True,
        "prefix": name }
    
    while True:
        try:
            response.download(args)
            break
        except:
            print("Error while downloading images. Retrying...")
  
for name, query in search_queries.items():
    download_images(name, query)