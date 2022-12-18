#!/usr/bin/env bash
# wsession.sh

if [[ -z `pidof wlogout` ]]; then
	wlogout														\
		--protocol layer-shell									\
		--buttons-per-row 5										\
		--layout												\
			$HOME/.config/hypr/themes/active/wlogout/layout		\
		--css													\
			$HOME/.config/hypr/themes/active/wlogout/style.css
fi
