ls | grep -v jpg$ | while IFS= read -r FILENAME
do
    convert "${FILENAME}" "${FILENAME%.*}.jpg"
done

find . -type f ! -iname "*.jpg" -delete
