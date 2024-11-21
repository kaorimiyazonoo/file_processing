#!/bin/bash

#Loops through the amount of folders specific to the directory to move files
for i in {1..150}; do
	folder="fov-${i}-scan-1"

	#Checks if parent folder exists
	if [ -d "$folder" ]; then
		rescaled_folder="${folder}/rescaled"

		#Check if rescaled folder exists
		if [ -d "$rescaled_folder" ]; then
			echo "Processing $rescaled_folder..."

			mv "$rescaled_folder"/* "$folder" 2>dev>null

			rmdir "$rescaled_folder" 2>dev>null
		else
			echo "Rescaled folder not found in $folder"
		fi
	fi
done

rm -v dev
rm -v null

###
#	for i in $(seq 5000 5000 25000); do
#   	 rm -i rho_${i}.txt
#	done
###



