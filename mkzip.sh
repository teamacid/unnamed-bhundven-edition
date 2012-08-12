#!/bin/bash
version="v1"
output_dir=".."
output_file="${output_dir}/unnamed-bhundven-edition-${version}.zip"

echo -ne "Removing old zip file... "
rm -f $output_file
echo "Done!"

echo -ne "Creating new zip file... "
zip -q -r -9 $output_file data META-INF system tools updates
if [ $? -ne 0 ]; then
  echo "Zip failed!"
  exit 1
fi
echo "Done!"

echo "Finished!"
