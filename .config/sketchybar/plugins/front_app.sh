#!/bin/bash

source "$CONFIG_DIR/icons.sh"

if [ "$SENDER" = "front_app_switched" ]; then
  ICON_STRING=$(bash $CONFIG_DIR/plugins/icon_map.sh $INFO)
  sketchybar --set $NAME label="$INFO" icon.font="sketchybar-app-font:Regular:16.0" icon.string="$ICON_STRING"
fi

# if [ "$SENDER" = "front_app_switched" ]; then
#   FLAG=1
#   case "$INFO" in 
#     "Finder")
#       ICON="$YABAI_GRID"
#       ;;
#     "kitty")
#       ICON="$TERMINAL"
#       ;;
#     "Firefox")
#       ICON="$INFINITY_CIRCLE"
#       ;;
#     "Chrome")
#       ICON="$SQUARE_STACK"
#       ;;
#     "Typora")
#       ICON="$TEXT"
#       ;;
#     "IINA")
#       ICON="$IINA"
#       ;;
#     "QQ")
#       ICON="$QQ"
#       ;;
#     "WeChat")
#       ICON="$WECHAT"
#       ;;
#     "Telegram")
#       ICON="$TELEGRAM"
#       ;;
#     "Spotify")
#       ICON="$SPOTIFY"
#       ;;
#     "Mail")
#       ICON="$MAIL"
#       ;;
#     "smfFanControl")
#       ICON="$BURN"
#       ;;
#     *)
#       FLAG=0
#       ;;
#   esac
#   if [ $FLAG -eq 0 ]; then
#   # sketchybar --set $NAME label="$INFO" icon.background.image="app.$INFO"
#     sketchybar --set $NAME label="$INFO" icon.string="" icon.background.image="app.$INFO" icon.background.image.scale=0.4
#   else
#     sketchybar --set $NAME label="$INFO" icon.string="$ICON" icon.background.image=""
#   fi
#   # sketchybar --set $NAME label="$INFO"
# fi
