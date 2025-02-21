-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
 config.colors = {
    foreground = "#E8E8E8",      -- Light gray for main text
    background = "#1A1B26",      -- Deep blue-gray background
    cursor_bg = "#A277FF",       -- Purple cursor
    cursor_border = "#A277FF",   -- Purple cursor border
    cursor_fg = "#1A1B26",       -- Background color for cursor text
    selection_bg = "#3B4261",    -- Muted blue for selections
    selection_fg = "#E8E8E8",    -- Light gray for selected text
    ansi = {
        "#32344A",  -- black
        "#FF7A93",  -- red
        "#9ECE6A",  -- green
        "#E0AF68",  -- yellow
        "#7AA2F7",  -- blue
        "#AD8EE6",  -- magenta
        "#449DAB",  -- cyan (more muted)
        "#787C99"   -- white
    },
    brights = {
        "#444B6A",  -- bright black
        "#FF7A93",  -- bright red
        "#9ECE6A",  -- bright green
        "#E0AF68",  -- bright yellow
        "#7AA2F7",  -- bright blue
        "#AD8EE6",  -- bright magenta
        "#449DAB",  -- bright cyan (more muted)
        "#ACB0D0"   -- bright white
    },
}

config.force_reverse_video_cursor = true

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 16

-- config.color_scheme = "Catppuccin Mocha"  -- Dark theme with warm, pastel colors
-- config.color_scheme = "Tokyo Night"
-- config.color_scheme = "Tomorrow Night Burns"
-- config.color_scheme = "Toy Chest (Gogh)"
-- config.color_scheme = "Thayer Bright (Gogh)"
-- config.color_scheme = "The Hulk"
-- config.color_scheme = "Apple Classic"
-- config.color_scheme = "Aurora"

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.75
config.macos_window_background_blur = 8

-- and finally, return the configuration to wezterm
return config
