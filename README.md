# Hyprdots ⚡

![Preview v1.0.0](https://i.ibb.co/0yrVmRY/preview-1-0-0.png)

> *A powerful Hyprland config with a simplistic, modular structure.*

**⚠️ Heads up:** This is *my* config and therefore it will work best on systems similar to mine. While I do try hard to make this config as hardware / software agnostic as possible, there may be some parts you will have to configure yourself.

## Dependencies

Not every config requires the same dependencies, you may only need some of these deps depending on your config.

The following dependencies apply to Fedora 36-37:  
```sh
swaylock-effects \
hyprland-git \
xsettingsd \
alacritty \
fastfetch \
playerctl \
wlogout \
waybar \
mako \
wofi \
```

`Hyprland-git` Copr: https://copr.fedorainfracloud.org/coprs/kasion/Hyprland-git/  
`swaylock-effects` Copr: https://copr.fedorainfracloud.org/coprs/eddsalkield/swaylock-effects/  

*Optional:* For the wlr/workspaces module to work, you must compile `waybar` with the options specified at https://wiki.hyprland.org/Useful-Utilities/Status-Bars/#waybar

`swww` is not in the Fedora repositories, you may compile it yourself at: https://github.com/Horus645/swww

## Installation

Installation can be completed in 1-2 simple steps.

1. Clone this repository to your config directory:
```sh
git clone https://github.com/cwillsey06/hyprdots.git ~/.config/hypr
```

2. Configure! (see? I told you it was simple~)

## Credits

Default config wallpaper: [Zaki (Artstation)](https://creatiflux.artstation.com/projects/xl3Nm)

