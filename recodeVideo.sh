# Recode videos to hevc (h.265 10bit) using nvidea hardware encoder:
# - Great quality
# - Keep original resolution & framerate
# - Keep original audio
# - Make sure video loads quickly when opened over network connection (faststart)
# - Copy over original metadata
#
# - Requires
#	- ffmpeg to be installed and in the $PATH
#	- Nvidia graphics card that supports hardware h.265 encoding: https://en.wikipedia.org/wiki/Nvidia_NVENC
# - Copy this script to a folder that contains your mp4 files & launch it. It will recode all of them & store them in a new file with a suffix -recoded-hevc_main10

#!/bin/bash
# Change the input and output formats as needed
INPUT_FORMAT=[mM][pP]4
OUTPUT_FORMAT=mp4
# Change the ffmpeg options as needed
FFMPEG_OPTIONS="-c:v hevc_nvenc -preset p7 -profile main10 -tune hq -cq 18 -pix_fmt p010le -movflags faststart -map_metadata 0 -c:a copy"
# Loop through all files in the current folder with the input format
for file in *.$INPUT_FORMAT; do
  # Get the file name without the extension
  base=${file%.*}
  # Recode the file using ffmpeg and save it with the output format
  ffmpeg -i "$file" $FFMPEG_OPTIONS "$base-recoded-hevc_main10.$OUTPUT_FORMAT"
done
