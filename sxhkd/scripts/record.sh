#!/bin/bash

# Проверить, запущена ли запись
if pgrep -f "ffmpeg -f x11grab -i :0.0 -r 30 -vcodec libx264 -acodec libmp3lame -y" > /dev/null; then
  # Запись запущена, остановить ее
  pkill -f "ffmpeg -f x11grab -i :0.0 -r 30 -vcodec libx264 -acodec libmp3lame -y"
  echo "Запись остановлена!"
else
  # Запись не запущена, запустить ее
  ffmpeg -f x11grab -i :0.0 -r 30 -vcodec libx264 -acodec libmp3lame -y "/home/mflkee/video/record/record_$(date +%Y-%m-%d_%H-%M-%S).mp4" &
  echo "Запись началась!"
fi

