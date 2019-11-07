import os

def get_all_images():
  DATA_PATH = './data'

  images = []
  for root, dirs, files in os.walk(DATA_PATH):
    for file in files:
        if (file.endswith(".jpg") or
            file.endswith(".jpeg")):
          images.append(os.path.join(root, file))

  return images

def get_all_videos():
  DATA_PATH = './data'

  videos = []
  for root, dirs, files in os.walk(DATA_PATH):
    for file in files:
        if (vido.endswith(".jpg") or
            file.endswith(".jpeg")):
          videos.append(os.path.join(root, file))

  return videos

if __name__ == "__main__":
  main()
