#!/bin/bash
# URL of the zip file to download
zip_url="https://storage.googleapis.com/avfx_public/mosyle-mdm/playback-pro/PlaybackPro_Plus_X_4.0.5.zip"

# Temporary directory to store the downloaded zip file
temp_dir="/tmp/zzzzz_playbackpro"

# Destination directory where you want to extract the contents
destination_dir="/Applications/"

# Create a temporary directory if it doesn't exist
mkdir -p "$temp_dir"

# Download the zip file
curl -L "$zip_url" -o "$temp_dir/file.zip"

# Extract the contents to the destination directory
unzip -o "$temp_dir/file.zip" -d "$destination_dir"

#rm -rf "__MACOSX"

# Clean up the temporary directory
rm -rf "$temp_dir"