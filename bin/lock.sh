#!/bin/sh
# lock.sh

function lock {
	swaylock						\
		--screenshots				\
		--clock						\
		--indicator					\
		--indicator-radius 100		\
		--indicator-thickness 7		\
		--effect-blur 7x5			\
		--effect-vignette 0.5:0.5	\
		--ring-color f78b31			\
		--key-hl-color ffa95e		\
		--line-color 00000000		\
		--inside-color 00000088		\
		--separator-color 00000000	\
		--fade-in 0.2
}

case $1 in
	--suspend)
		systemctl suspend
	;;
esac
lock

