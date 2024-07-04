#!/bin/bash

# Получаем состояние клиента на текущем рабочем столе
client_state=$(bspc query -T -d "$(bspc query -D -d)" | jq -r '.root.client.state')

# Формируем вывод и применяем цвета
case $client_state in
    floating)
        echo -e "%{F#C4746E}[floating]"
        ;;
    pseudo_tiled)
        echo -e "%{F#E6C384}[pseudo_tiled]"
        ;;
    fullscreen)
        echo -e "%{F#7FB4CA}[fullscreen]"
        ;;
    *) # в противном случае возвращаем layout рабочего стола
        layout=$(bspc query -T -d "$(bspc query -D -d)" | jq -r '.layout')
        echo "%{F#87A987}[$layout]"
        ;;
esac

# ; Цвета для текста и фона
# color0 = #0D0C0C
# color1 = #C4746E
# color2 = #8A9A7B
# color3 = #C4B28A
# color4 = #8BA4B0
# color5 = #A292A3
# color6 = #8EA4A2
# color7 = #C8C093
# color8 = #A6A69C
# color9 = #E46876
# color10 = #87A987
# color11 = #E6C384
# color12 = #7FB4CA
# color13 = #938AA9
# color14 = #7AA89F
# color15 = #C5C9C5
