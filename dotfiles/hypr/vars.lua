-----------------
--- VARIABLES ---
-----------------

local vars = {
    terminal         = "kitty",
    fileManager      = "dolphin",
    menu             = "dms ipc call spotlight toggle",
    lock             = "dms ipc call lock lock",
    chat             = "flatpak run com.discordapp.Discord",
    games            = "steam",
    browser          = "flatpak run app.zen_browser.zen",
    dashboard        = "dms ipc call control-center toggle",
    screenshotRegion = "hyprshot -m region -o ~/Pictures/Screenshots",
    screenshotWindow = "hyprshot -m window -o ~/Pictures/Screenshots",
    screenshotFull   = "hyprshot -m output -o ~/Pictures/Screenshots",
    monitor          = "dms ipc call processlist toggle",
    shell            = "dms run",
    media            = "dms ipc call dash toggle media",
}

return vars
