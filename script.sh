#!/bin/bash

# Define README file
README="README.md"

# Start writing the README
echo "# CSS Battle Solutions" > $README
echo "" >> $README
echo "| Preview | Date |" >> $README
echo "|---------|------|" >> $README

# Loop through each directory
for dir in */; do
    # Remove trailing slash
    dir_name="${dir%/}"
    
    # Encode spaces as %20 for Markdown links
    encoded_name=$(echo $dir_name | sed 's/ /%20/g')

    # Append to README
    echo "| ![${dir_name}](${encoded_name}/index.html) | [${dir_name}](${encoded_name}/index.html) |" >> $README
done

echo "README.md updated successfully!"
