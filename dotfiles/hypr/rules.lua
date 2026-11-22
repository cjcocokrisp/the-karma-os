--------------------
--- WINDOW RULES ---
--------------------

hl.window_rule({
    name = "file-explorer-opacity",
    match = { class = "^(org.gnome.Nautilus)$" },
    opacity = "0.95 0.95",
})

hl.window_rule({
    name = "spotify-ws-special",
    match = { class = "^(spotify)$" },
    workspace = "special:magic",
})

hl.window_rule({
    name = "discord-ws-10",
    match = { class = "^(discord)$" },
    workspace = "10",
})

hl.window_rule({
    name = "bitwarden-float-size",
    match = { class = "^(Bitwarden)$" },
    float = true,
    size = { 900, 600 },
    center = true,
})

hl.window_rule({
    name = "btop-float-size",
    match = { class = "^(Bitwarden)$" },
    float = true,
    size = { 1000, 600 },
    center = true,
})

hl.window_rule({
    name = "xdg-desktop-portal-gtk-float-size",
    match = { class = "^(xdg-desktop-portal-gtk)$" },
    float = true,
    size = { 900, 600 },
    center = true,
})

hl.window_rule({
    name = "xdg-desktop-portal-gtk-float-size",
    match = { class = "^(dev.duxlabs.shell$)$" },
    float = true,
    size = { 1100, 700 },
    center = true,
})
