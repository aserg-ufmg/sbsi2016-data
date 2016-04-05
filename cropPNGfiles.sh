clear

FILES=*.png
for f in $FILES
do
  filename="${f%.*}"
  echo -n "$filename: "
  convert "$filename.png" -trim "$filename.png" > /dev/null 2>&1
  echo "OK."
done