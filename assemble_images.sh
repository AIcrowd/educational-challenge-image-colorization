current = $i

mkdir -p ./data/train/
for image in `find . -name '*.jpg' -o -name '*.jpeg'`; do

  filename=$(basename -- "$image")
  extension="${filename##*.}"
  filename="${filename%.*}"

  echo $image
  i=$((i+1))

  cp $image ./data/train/$i.$extension
done
