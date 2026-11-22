-----------------
--- VARIABLES ---
-----------------

local vars = {
    terminal         = "kitty",
    fileManager      = "nautilus --new-window",
    menu             = "dms ipc call spotlight toggle",
    lock             = "hyprlock",
    chat             = "Discord",
    games            = "steam",
    browser          = "zen-browser",
    bluetooth        = "blueman-manager",
    bluetoothDaemon  = "blueman-applet",
    wifiDaemon       = "nm-applet --indicator",
    dashboard        = "dms ipc call control-center toggle",
    screenshotRegion = "hyprshot -m region -o ~/Pictures/Screenshots",
    screenshotWindow = "hyprshot -m window -o ~/Pictures/Screenshots",
    screenshotFull   = "hyprshot -m output -o ~/Pictures/Screenshots",
    monitor          = "dms ipc call processlist toggle",
    notifications    = "mako",
    widgets          = "eww daemon",
    statusBar        = "waybar",
    audioMixer       = "pavucontrol",
}

return vars
