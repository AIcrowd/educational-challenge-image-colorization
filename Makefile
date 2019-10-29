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
