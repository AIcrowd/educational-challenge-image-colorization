download-places365-val:
	echo "Downloading places365-val images... This might take a while..."
	#wget -O data/places365-val.tar http://data.csail.mit.edu/places/places365/val_large.tar
	rm -rf data/places365-val
	mkdir data/places365-val
	echo "Extracting places365-val images... This might take a while..."
	tar -C data/places365-val -xf data/places365-val.tar

download-places365-train:
	echo "Downloading places365-train images... This might take a while..."
	#wget -O data/places365-train.tar http://data.csail.mit.edu/places/places365/test_large.tar
	rm -rf data/places365-train
	mkdir data/places365-train
	echo "Extracting places365-train images... This might take a while..."
	tar -C data/places365-train -xf data/places365-train.tar

download-places365:
	echo "Downloading places365 images... This might take a while..."
	#wget -O data/places365.tar http://data.csail.mit.edu/places/places365/train_large_places365challenge.tar
	rm -rf data/places365
	mkdir data/places365
	echo "Extracting places365 images... This might take a while..."
	tar -C data/places365 -xf data/places365.tar

download-hollywood2:
	#wget -O data/holywood2-actions.tar.gz ftp://ftp.irisa.fr/local/vistas/actions/Hollywood2-actions.tar.gz
	tar -C data/ -xf data/holywood2-actions.tar.gz -v
	wget -O data/holywood2-scenes.tar.gz ftp://ftp.irisa.fr/local/vistas/actions/Hollywood2-scenes.tar.gz
	tar -C data/ -xf data/holywood2-scenes.tar.gz -v

sample-videos:
	./sample_videos.sh

assemble-images:
	echo "Assemble images... This might take a while..."
	chmod +x assemble_images.sh
	./assemble_images.sh

download-tencent-urls-txt:
	echo "Downloadin train_urls_from_openimages.txt..."
	chmod +x gdown.pl
	#./gdown.pl https://drive.google.com/file/d/1__HFVimF5yUwlyEjaUoSmBBfRQKJTYKW/view train_urls_from_openimage.txt
	echo "Done"
	echo "Downloading val_urls_from_openimages.txt..."
	#./gdown.pl https://drive.google.com/file/d/1JkTcEEkB1zYI6NtAM-vXpsv7uDZ3glEz/view val_urls_from_openimages.txt
	echo "Done"

download-tencent-openimages:
	echo "Downloading tencent openimages... This might take a while..."
	chmod +x download_tencent_openimages.sh
	./download_tencent_openimages.sh

generate-black-white:
	echo "Generate black and white images... This might take a while..."
	chmod +x generate_black_and_white.sh
	./generate_black_and_white.sh

split-train-and-test:
	mkdir -p test_data/
	find train_data/ -mindepth 1 -maxdepth 1 | head -1264555 | xargs -i mv {} test_data/

all: download-places365-val download-places365-train download-places365 download-tencent-urls-txt download-tencent-openimages assemble-images
