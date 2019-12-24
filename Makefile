download-places365-val:
	wget -O data/places365-val.tar http://data.csail.mit.edu/places/places365/val_large.tar
	rm -rf data/places365-val
	mkdir data/places365-val
	tar -C data/places365-val -xvf data/places365-val.tar

download-places365-train:
	wget -O data/places365-train.tar http://data.csail.mit.edu/places/places365/test_large.tar
	rm -rf data/places365-train
	mkdir data/places365-train
	tar -C data/places365-train -xvf data/places365-train.tar

download-places365:
	wget -O data/places365.tar http://data.csail.mit.edu/places/places365/train_large_places365challenge.tar
	rm -rf data/places365
	mkdir data/places365
	tar -C data/places365 -xvf data/places365.tar

download-hollywood2:
	wget -O data/holywood2-actions.tar.gz ftp://ftp.irisa.fr/local/vistas/actions/Hollywood2-actions.tar.gz
	tar -C data/ -xf data/holywood2-actions.tar.gz -v
	wget -O data/holywood2-scenes.tar.gz ftp://ftp.irisa.fr/local/vistas/actions/Hollywood2-scenes.tar.gz
	tar -C data/ -xf data/holywood2-scenes.tar.gz -v

sample-videos:
	./sample_videos.sh

assemble-images:
	./assemble_images.sh

download-tencent-urls-txt:
	echo "Downloadin train_urls_from_openimages.txt..."
	chmod +x gdown.pl
	./gdown.pl https://drive.google.com/file/d/1__HFVimF5yUwlyEjaUoSmBBfRQKJTYKW/view train_urls_from_openimage.txt
	echo "Done"
	echo "Downloading val_urls_from_openimages.txt..."
	./gdown.pl https://drive.google.com/file/d/1JkTcEEkB1zYI6NtAM-vXpsv7uDZ3glEz/view val_urls_from_openimages.txt
	echo "Done"

download-tencent-openimages:
	chmod +x download_tencent_openimages.sh
	./download_tencent_openimages.sh

generate-black-white:
	chmod +x generate_black_and_white.sh
	./generate_black_and_white.sh

all: download-places365-val download-places365-train download-places365 download-tencent-urls-txt download-tencent-openimages assemble-images