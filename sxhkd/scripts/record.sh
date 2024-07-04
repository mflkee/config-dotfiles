#!/bin/bash

# Функция для создания директории, если она не существует
create_dir_if_not_exists() {
  local dir="$1"
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
    echo "Directory created: $dir"
  fi
}

# Путь к директории для сохранения записей
record_dir="/home/mflkee/videos/record"

# Создать директорию, если она не существует
create_dir_if_not_exists "$record_dir"

# Проверить, запущена ли запись
if pgrep -f "ffmpeg -f x11grab -i :0.0 -r 30 -vcodec libx264 -acodec libmp3lame -y" > /dev/null; then
  # Запись запущена, остановить ее
  pkill -f "ffmpeg -f x11grab -i :0.0 -r 30 -vcodec libx264 -acodec libmp3lame -y"
  echo "Запись остановлена!"
else
  # Запись не запущена, запустить ее
  filename="record_$(date +%Y-%m-%d_%H-%M-%S).mp4"
  full_path="$record_dir/$filename"
  ffmpeg -f x11grab -i :0.0 -r 30 -vcodec libx264 -acodec libmp3lame -y "$full_path" &
  echo "Запись началась!"
fi
