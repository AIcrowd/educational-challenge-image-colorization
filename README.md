# educational-challenge-image-colorization
Repository for the Image Colorization educational challenge

[Design Doc](https://docs.google.com/document/d/17VUIxKiboVio2z4lAwyfoOgkg9ZY6plyWNpXFOLRD58/edit?usp=sharing)

# Install

Prerequisites

## Make

In order to run `make` commands, install:
```
sudo apt-get install --reinstall build-essential
```

## Python Environemnt

```
conda env create -f environment.yml
conda activate ecic
```

## Download dataset

To download and assemble the dataset, use:

```
make all
```

This will create a directory `./data/train`. Note that the images require lots of storage, so make
sure you have that available first. The dataset is a combination of Places365 and OpenImages by tencent.

## Generate gray scale images

For convenience, we also added a script to convert all the images to black and white. In order to generate
black and white images, just run `make generate-black-white`.

Alternatively, we strongly encourage you to try out different methods to gray scale the images, and
hence get better models that perform well on different type of gray-scale modification.

Here's the method we are using (it uses [Pillow](https://pillow.readthedocs.io/en/stable/))

```
from PIL import Image

def grayscale_image(input_path, output_path):
  img = Image.open(input_path).convert('L')
  img.save(output_path)
```
