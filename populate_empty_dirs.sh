#!/bin/bash



//-------------------------------------------

// Find every empty directory

//-------------------------------------------



find . -type d -empty | while read -r dir

do

	    echo "Adding file to: $dir"



	        echo "India" > "$dir/info.txt"

	done



	echo

	echo "Done."


