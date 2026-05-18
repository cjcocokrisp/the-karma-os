## Desktop Adjustments

Below is a list adjustments I have made for the installation on my desktop which includes two monitors
being an ultrawide and a normal size monitor


`~/.config/waybar/config.jsonc`
```diff
+ "output": "DP-1",

"modules-right": [
    "custom/egv",
    "custom/separator",
    "cpu",
    "custom/separator",
    "memory",
-   "custom/separator",
-   "temperature",
-   "custom/separator",
-   "battery",
    "custom/separator",
    "clock"
  ],

```

`~/.config/hypr/hyprland.conf`
```diff
+monitor=DP-1, 3440x1440@144,auto,1.25
+monitor=,preferred,auto,1.25

+workspace = 1, monitor:DP-1
+workspace = 2, monitor:DP-1
+workspace = 3, monitor:DP-1
+workspace = 4, monitor:DP-1
+workspace = 5, monitor:DP-1
+workspace = 6, monitor:DP-1
+workspace = 7, monitor:DP-1
+workspace = 8, monitor:HDMI-A-1
+workspace = 9, monitor:HDMI-A-1
+workspace = 10, monitor:HDMI-A-1
+workspace = special:magic, layout:dwindle
```

`~/.config/hypr/hyprpaper.conf`
```diff
+preload = /home/cjcocokrisp/Pictures/wallpaper.jpg
+preload = /home/cjcocokrisp/Pictures/wallpaper_ultrawide.jpg

+wallpaper = DP-1,/home/cjcocokrisp/Pictures/wallpaper_ultrawide.jpg
+wallpaper = HDMI-A-1,/home/cjcocokrisp/Pictures/wallpaper.jpg
```