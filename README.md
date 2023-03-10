**⚠️ Notice:** I'm done maintaining this for a little while. If I ever return, expect the whole config "system" to be vastly different.

# Hyprdots ⚡

[![Preview v1.0.0](https://i.ibb.co/0yrVmRY/preview-1-0-0.png)](https://i.ibb.co/0yrVmRY/preview-1-0-0.png)

> *A powerful Hyprland config with a simplistic, modular structure.*

**⚠️ Heads up:** This is *my* config and therefore it will work best on systems similar to mine. While I do try hard to make this config as hardware / software agnostic as possible, there may be some parts you will have to configure yourself.

## Dependencies

### Fedora

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

The following dependencies can be found on Copr:  
[`Hyprland-git`](https://copr.fedorainfracloud.org/coprs/kasion/Hyprland-git)
[`swaylock-effects`](https://copr.fedorainfracloud.org/coprs/eddsalkield/swaylock-effects)  

The following dependencies must be installed manually:  
[`waybar-hyprland-git`](https://wiki.hyprland.org/Useful-Utilities/Status-Bars/#waybar)
[`grimblast`](https://github.com/hyprwm/contrib)
[`hyprpicker`](https://github.com/hyprwm/hyprpicker)
[`swww`](https://github.com/Horus645/swww)

## Installation

Installation can be completed in 1-2 simple steps.

1. Clone this repository to your config directory:
```sh
git clone https://github.com/cwillsey06/hyprdots.git ~/.config/hypr
```

2. Configure! (see? I told you it was simple~)

## Configuration

Configurations can be set by creating a link to the config you want to use, and renaming said link to `active`.  
(There will soon be a way to set your active theme without touching the folder structure)

An easy place to start is the `Light` configuration. You can find it in [`themes/Light/`](https://github.com/cwillsey06/hyprdots/tree/main/themes/Light)

## Credits

Default config wallpaper: [Zaki (Artstation)](https://creatiflux.artstation.com/projects/xl3Nm)  
Some `Light` theme components: [archcraft-bspwm](https://github.com/archcraft-os/archcraft-bspwm) [Aditya Shakya](https://github.com/adi1090x)
