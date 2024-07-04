#!/bin/bash

# Получаем текущий расклад клавиатуры
layout=$(xset -q | grep -A 0 'LED' | awk '{ print $NF }')

# Определяем активный расклад на основе светодиодного состояния клавиатуры
if [ "$layout" -eq 00000000 ]; then
  lang="US"
else
  lang="RU"
fi

# Используем %{T3}% для указания шрифта font-2 из вашей конфигурации polybar
output="%{T2}${lang}%{T}"

echo "$output"
