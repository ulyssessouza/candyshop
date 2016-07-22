gource -1280x720 -s 1 --user-image-dir ~/Dropbox/Photos -o /tmp/$1.ppm
ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i /tmp/$1.ppm -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 $1.mp4
rm -rf /tmp/$1.ppm
