# Downscale from original video 720p 24fps HD
ffmpeg -i ./input/video.mp4 -vf scale=w=480:h=270:force_original_aspect_ratio=decrease ./sequence/progress-%01d.png -hide_banner
# Seqence original video 720p 24fps HD
#ffmpeg -i ./input/video.mp4 ./sequence/progress-%01d.png -hide_banner
