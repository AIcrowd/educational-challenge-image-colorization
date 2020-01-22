mkdir -p ./train_data/

# Set seed to random
RANDOM=640

echo "Copy and rename jpg files"
find ./data -iname "*.jpg" | while read line
do
	echo $line
	cp $line "./train_data/$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM.jpg";
done

echo "Copy and rename jpeg files"
find ./data -iname "*.jpeg" | while read line
do
	echo $line
	cp $line "./train_data/$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM.jpeg";
done

