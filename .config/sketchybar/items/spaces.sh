#!/bin/bash

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8")

# Destroy space on right click, focus space on left click.
# New space by left clicking separator (>)

sid=0
spaces=()
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i + 1))

  space=(
    space=$sid
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=6
    icon.padding_right=10
    # padding_left=2
    # padding_right=2
    label.padding_right=20
    icon.highlight_color=$ORANGE
    label.color=$GREY
    label.highlight_color=$MAGENTA
    label.font="sketchybar-app-font:Regular:16.0"
    label.y_offset=-1
    # background.color=$BACKGROUND_1
    # background.border_color=$BACKGROUND_2
    # background.drawing=off
    label.background.color=$BACKGROUND_1
    label.background.height=22
    label.background.corner_radius=5
    label.drawing=off
    script="$PLUGIN_DIR/space.sh"
		click_script="osascript ~/.config/sketchybar/applescript/switch_to_desktop_$sid.scpt"
  )

  sketchybar --add space space.$sid left    \
             --set space.$sid "${space[@]}" \
             --subscribe space.$sid mouse.clicked
done

sketchybar --set space.1 icon.padding_left=12

spaces_bracket=(
	background.color=$BACKGROUND_1
	background.border_color=$BACKGROUND_2
)

space_creator=(
  icon=􀆊
  icon.font="$FONT:Regular:16.0"
  padding_left=10
  padding_right=5
  label.drawing=off
  display=active
  click_script='yabai -m space --create'
  script="$PLUGIN_DIR/space_windows.sh"
  icon.color=$WHITE
)

sketchybar --add bracket spaces_bracket '/space\..*/' \
	         --set spaces_bracket "${spaces_bracket[@]}" \
           --add item space_creator left               \
           --set space_creator "${space_creator[@]}"   \
           --subscribe space_creator space_windows_change
