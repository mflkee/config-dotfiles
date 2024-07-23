#!/bin/bash

# Извлекаем температуру из строки Package id 0
temp=$(sensors | grep 'Package id 0' | awk '{print $4}' | sed 's/[^0-9.]//g')
temp=${temp%.*}  # Удаляем десятичную часть

# Определение цветов
COLOR1="#8A9A7B" # до 60
COLOR2="#E6C384" # после 60 и до 80
COLOR3="#E46876" # после 80 и выше 

if [[ "$temp" -ge 80 ]]; then
  echo "%{F$COLOR3}$temp°C%{F-}"
elif [[ "$temp" -ge 60 ]]; then
  echo "%{F$COLOR2}$temp°C%{F-}"
else
  echo "%{F$COLOR1}$temp°C%{F-}"
fi
