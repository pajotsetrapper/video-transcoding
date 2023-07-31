# video-transcoding
Script for transcoding videos, using ffmpeg

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
