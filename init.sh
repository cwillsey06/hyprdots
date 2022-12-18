#!/usr/bin/env bash

### init.sh
### cwillsey06
### 2022-12-17 [16:48]

## Config [re]initialization file

## Exports
# Required for waybar tray items
export XDG_CURRENT_DESKTOP=Unity
export CONFIG_HOME="${HOME}/.config/hypr"
export ACTIVE_THEME="${CONFIG_HOME}/themes/active"

# Include cask-print lib
source ${CONFIG_HOME}/bin/cask_print.sh

# Array of programs to kill
programs=("swww-daemon" "xsettingsd" "waybar" "mako")


function kill_all {
	for prog in ${programs[@]}; do
		pkill -9 $prog
	done
}

# Start process
cask_print --progress "Starting reinitialization process..."

# Kill all relevant programs
kill_all &

# Await closure
for prog in ${programs[@]}; do
	if [ -z $(pidof $prog) ]; then
		break;
	else
		echo "Awaiting process termination..."
	fi
done

cask_print --progress "All relevant processes terminated."

# Reinitialize
${CONFIG_HOME}/bin/swww_init.sh &
xsettingsd --config ${ACTIVE_THEME}/xsettingsd          &> /dev/null &
waybar     --config ${ACTIVE_THEME}/waybar/config.jsonc &> /dev/null &
mako       --config ${ACTIVE_THEME}/makorc              &> /dev/null &


# Await init
for prog in ${programs[@]}; do
	if [ -z $(pidof $prog) ]; then
		echo "Awaiting process initializtion..."
	else
		break
	fi
done

cask_print --progress "All relevant processes reinitialized."

# Finish
cask_print --info "Done!"

