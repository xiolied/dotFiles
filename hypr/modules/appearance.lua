-----------------------
---- LOOK AND FEEL ----
-----------------------

local colors = require("modules.colors")

hl.config({
    general = {
        gaps_in  = 1,
        gaps_out = 4,

        border_size = 2,

        col = {
            -- Vague: hint + builtin active, line inactive
            active_border   = { colors = {"rgba(" .. colors.hint .. "ee)", "rgba(" .. colors.builtin .. "ee)"}, angle = 45 },
            inactive_border = "rgba(" .. colors.line .. "aa)",
        },

        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding       = 0,
        rounding_power = 3,

        -- Transparency is required for blur to be visible
        active_opacity   = 1,
        inactive_opacity = 1,

        shadow = {
            enabled      = false,
            range        = 4,
            render_power = 3,
            color        = "rgba(" .. colors.bg .. "ee)",
        },

        blur = {
            enabled            = false,
            size               = 5,
            passes             = 3,
            ignore_opacity     = true,
            new_optimizations  = true,
            xray               = true,
            vibrancy           = 0.6,
            vibrancy_darkness  = 0.2,
            special            = true,
        },
    },

    animations = {
        enabled = false,
    },
})
