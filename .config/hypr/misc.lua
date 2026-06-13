-- Monitors
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

-- Disable news
hl.config({
  ecosystem = {
    no_update_news = true
  },
})

-- Workspace Rules
hl.workspace_rule({ workspace = "1", persistent = true})
hl.workspace_rule({ workspace = "2", persistent = true})
hl.workspace_rule({ workspace = "3", persistent = true})
hl.workspace_rule({ workspace = "4", persistent = true})
hl.workspace_rule({ workspace = "5", persistent = true})

hl.config({
    misc = {
        force_default_wallpaper = 1,
        disable_hyprland_logo   = true,
    },
})

-- Dwindle Layout
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- Master Layout
hl.config({
    master = {
        new_status = "master",
    },
})

-- Scrolling Layout
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

-- Supress Maximize
local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix XWayland Dragging Issues
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})
