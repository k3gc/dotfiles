#!/bin/bash

light -A 10
brightness=$(light -G)
percent=$(echo "$brightness")
dunstify -t 3000 -r 1234 -i display-brightness-symbolic \
"Brillo: $percent%"
