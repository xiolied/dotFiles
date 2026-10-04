--------------------
---- ANIMATIONS ----
--------------------

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

-- Smoother curves for fluid motion
hl.curve("smoothOut", { type = "bezier", points = { {0.36, 0}, {0.06, 1} } })
hl.curve("fluent",    { type = "bezier", points = { {0.16, 1}, {0.3, 1}  } })

-- Default springs
hl.curve("easy",         { type = "spring", mass = 1, stiffness = 238.1191, dampening = 24.21279333 })
-- Softer spring: less bounce, smoother settle
hl.curve("smoothSpring", { type = "spring", mass = 1, stiffness = 200, dampening = 28 })

hl.animation({ leaf = "global",        enabled = true,  speed = 10,  bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 6,   bezier = "smoothOut" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 5.5, spring = "smoothSpring" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 5,   spring = "smoothSpring", style = "popin 85%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 4,   bezier = "smoothOut",    style = "popin 85%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 5,   bezier = "smoothOut" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 4,   bezier = "smoothOut" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 5,   bezier = "smoothOut" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 5,   bezier = "smoothOut" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 5,   bezier = "smoothOut", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 4,   bezier = "smoothOut", style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 4,   bezier = "smoothOut" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 3.5, bezier = "smoothOut" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 4,   bezier = "smoothOut", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 4,   bezier = "smoothOut", style = "slidefade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 4,   bezier = "smoothOut", style = "slidefade" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 6,   bezier = "smoothOut" })

-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
