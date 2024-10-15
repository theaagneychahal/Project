#!/bin/bash

# Define the directory to sort
DIRECTORY="."

# Function to create directories and move files
function sort_files() {
    for file in "$DIRECTORY"/*; do
        if [ -f "$file" ]; then
            ext="${file##*.}"
            case "$ext" in
                png|jpg|jpeg|gif)
                    mkdir -p "$DIRECTORY/images"
                    mv "$file" "$DIRECTORY/images"
                    echo "Moved $file to $DIRECTORY/images/"
                    ;;
                pdf|doc|docx|txt)
                    mkdir -p "$DIRECTORY/documents"
                    mv "$file" "$DIRECTORY/documents"
                    echo "Moved $file to $DIRECTORY/documents/"
                    ;;
            esac
        fi
    done
}

# Run the sort_files function
sort_files


