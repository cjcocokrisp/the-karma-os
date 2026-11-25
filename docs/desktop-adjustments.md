## Desktop Adjustments

This document contains information about adjustments that I make for my gaming pc to
support two monitors where one is a normal 16:9 and the other one is 21:9.

### v2 Edition

#### Monitor Scaling

The scale for the monitor needs to be set to 1.25 as for some reason on the ultrawide it doesn't like 1.2.

```
hl.monitor({
  output   = "DP-1",
  mode     = "3440x1440@180.00Hz",
  position = "auto",
  scale    = "1.25",
})

hl.monitor({
  output   = "HDMI-A-1",
  mode     = "preferred",
  position = "auto",
  scale    = "1.2",
})
```

#### Turning off bar on second monitor

In the settings for the bar you can turn off it for the other option.

First, turn off all displays then go down and turn it off for the other monitor.

Second, go to the workspace settings and make the work space stuff so it shows all
of the workspaces on each monitor.

#### Setting Hyprland workspaces to a monitor with new lua config

Add this lua code into `hyprland.lua`.

```
for i = 1, 6 do
  hl.workspace_rule({ workspace = tostring(i), monitor = "DP-1", default = (i == 1), persistent = true })
end
for i = 7, 10 do
  hl.workspace_rule({ workspace = tostring(i), monitor = "HDMI-A-1", default = (i == 6), persistent = true })
end
```

### v1 Edition

Below is outdated and for v1 of the image.

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