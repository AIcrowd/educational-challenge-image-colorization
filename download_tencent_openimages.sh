echo "Downloading val images from URLs"
python2.7 ./download_urls_multithreading.py --url_list=val_urls_from_openimages.txt --im_list=val_im_from_openimages.txt --num_threads=20 --save_dir='./data/openimages-val'
echo "Done"

echo "Downloading train images from URLs"
python2.7 ./download_urls_multithreading.py --url_list=train_urls_from_openimage.txt --im_list=train_im_from_openimage.txt --num_threads=20 --save_dir='./data/openimages-train'
echo "Done"