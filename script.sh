#!/bin/bash

# Define README file
README="README.md"

# Start writing the README
echo "# CSS Battle Solutions" > $README
echo "" >> $README
echo "<p align='center'>" >> $README

# Loop through each directory
for dir in */; do
    # Remove trailing slash
    dir_name="${dir%/}"

    # Encode spaces as %20 for Markdown links
    encoded_name=$(echo $dir_name | sed 's/ /%20/g')

    # Append an iframe for the preview
    echo "  <a href='${encoded_name}/index.html' target='_blank'>" >> $README
    echo "    <iframe src='${encoded_name}/index.html' width='400' height='300' style='border:1px solid #ccc;'></iframe>" >> $README
    echo "  </a>" >> $README
done

echo "</p>" >> $README
echo "" >> $README

echo "README.md updated successfully!"
