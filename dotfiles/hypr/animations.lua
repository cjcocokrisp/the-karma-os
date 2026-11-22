-- Enable animations
hl.config({
    animations = {
        enabled = true,
    },
})

-- Bezier Curves
-- Syntax: hl.curve("name", { type = "bezier", points = { { x0, y0 }, { x1, y1 } } })
hl.curve("easeOutQuint",   { type = "bezier", points = { { 0.23, 1 },    { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear",         { type = "bezier", points = { { 0, 0 },       { 1, 1 } } })
hl.curve("almostLinear",   { type = "bezier", points = { { 0.5, 0.5 },   { 0.75, 1 } } })
hl.curve("quick",          { type = "bezier", points = { { 0.15, 0 },    { 0.1, 1 } } })
hl.curve("ease",           { type = "bezier", points = { { 0.25, 0.1 },  { 0.25, 1 } } })

-- Animations
-- Syntax: hl.animation({ leaf = "...", enabled = true, speed = ..., bezier = "...", style = "..." })
hl.animation({ leaf = "global",           enabled = true, speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",           enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",          enabled = true, speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn",        enabled = true, speed = 3.1,  bezier = "easeInOutCubic", style = "gnomed" })
hl.animation({ leaf = "windowsOut",       enabled = true, speed = 3.5,  bezier = "easeInOutCubic", style = "gnomed" })
hl.animation({ leaf = "windowsMove",      enabled = true, speed = 4.79, bezier = "easeOutQuint",   style = "gnomed" })
hl.animation({ leaf = "fadeIn",           enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",          enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",             enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",           enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",         enabled = true, speed = 4,    bezier = "easeOutQuint",   style = "fade" })
hl.animation({ leaf = "layersOut",        enabled = true, speed = 1.5,  bezier = "linear",         style = "fade" })
hl.animation({ leaf = "fadeLayersIn",     enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut",    enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",       enabled = true, speed = 1.94, bezier = "linear",         style = "slide" })
hl.animation({ leaf = "workspacesIn",     enabled = true, speed = 3.6,  bezier = "ease",           style = "slidefade" })
hl.animation({ leaf = "workspacesOut",    enabled = true, speed = 4.0,  bezier = "ease",           style = "slidefade" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 2.4,  bezier = "almostLinear",   style = "fade" })
hl.animation({ leaf = "zoomFactor",       enabled = true, speed = 7,    bezier = "quick" })

