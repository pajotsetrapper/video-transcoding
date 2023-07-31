# H.265 video-transcoding script
Script for transcoding videos to hvenc, h.265 10bit, using ffmpeg - reducing file size while trying to keep video quality intact.
- Keeps original resolution & framerate
- Keeps original audio
- Make sure video loads quickly when opened over network connection (faststart)
- Copies over original metadata to target file
- Does not alter your original file

Requires:
- ffmpeg to be installed and in the $PATH
- Nvidia graphics card that supports hardware h.265 encoding: https://en.wikipedia.org/wiki/Nvidia_NVENC

Usage:
Copy this script to a folder that contains your mp4 files & launch it.
It will recode all of them & store them in a new file with a suffix -recoded-hevc_main10
