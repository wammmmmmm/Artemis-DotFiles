# AR73M1S dots (for acer phn1672)

Computers have the capacity for love.

# Screenshots

### Orange
![](Screenshot.png)

### Blue
![](ScreenshotBlue.png)

## Dependencies 

+ Adwaita Dark Amoled Master theme
+ OieIcons
+ Iosevka Nerd Font
+ ttf-symbola-free
+ ttf-noto-emoji-monochrome
+ Empty butterfly white vr8 Cursor theme
+ mako
+ batify
+ hyprpaper
+ hyprlock
+ hypridle
+ hyprshot
+ yazi
+ waybar
+ whatsie
+ btop
+ bluez
+ bluez-utils
+ bluetui
+ pulsemixer
+ obsidian
+ sticky-notes
+ GTK settings

## Post install tweaks

Create the directory ```/etc/systemd/sleep.conf.d/``` and add the file ```mem-deep.conf``` with this inside: 

```bash
[Sleep]
MemorySleepMode=deep
```
This will stop battery draining while laptop lid is closed
