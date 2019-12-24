#!/usr/bin/env python

from PIL import Image
import os

def grayscale_image(input_path, output_path):
  img = Image.open(input_path).convert('L')
  images.append(os.path.join(root, file))
  img.save(output_path)

if __name__ == "__main__":  
  DATA_PATH = './data/train'

  images = []
  print("Started converting images to black and white")
  for root, dirs, files in os.walk(DATA_PATH):
    for file in files:
        if (file.endswith(".jpg") or
            file.endswith(".jpeg")):
          print(file)
          grayscale_image(os.path.join(root, file), os.path.join(root, ("bw_" + file)))
  print("Done converting images to black and white")
