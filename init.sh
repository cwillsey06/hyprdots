#!/bin/sh

### init.sh
### cwillsey06
### 2022-12-17 [16:48]

## Config [re]initialization file

## Globals
CONFIG_HOME="${HOME}/.config/hypr"
ACTIVE_THEME="${CONFIG_HOME}/themes/active"

# Array of programs to kill
programs=("swww-daemon" "xsettingsd" "waybar" "mako")

# Kill all relevant programs
for prog in ${programs[@]}; do
	pkill -9 $prog
done

# Reinitialize
${CONFIG_HOME}/bin/swww_init.sh &
xsettingsd --config ${ACTIVE_THEME}/xsettingsd          &> /dev/null &
waybar     --config ${ACTIVE_THEME}/waybar/config.jsonc &> /dev/null &
mako       --config ${ACTIVE_THEME}/makorc              &> /dev/null &

