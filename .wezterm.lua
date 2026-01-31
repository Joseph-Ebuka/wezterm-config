-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Geometry
config.initial_cols = 120
config.initial_rows = 28

-- Appearance
config.font_size = 10
-- config.color_scheme = 'Builtin Solarized Dark'
config.colors = {
    tab_bar = {
        background = '#1e1e2e',
        active_tab = {
            bg_color = '#f5e0dc',
            fg_color = '#1e1e2e',
            intensity = 'Bold'
        },
        inactive_tab = {
            bg_color = '#1e1e2e',
            fg_color = '#cdd6f4'
        },
        inactive_tab_hover = {
            bg_color = '#1e1e2e',
            fg_color = '#cdd6f4',
            italic = true
        }
    },
    foreground = "#FFFFFF" -- pure white text
}
config.font = wezterm.font_with_fallback {"JetBrains Mono", "FiraCode Nerd Font"}
config.window_decorations = "RESIZE" -- or "NONE" for a frameless window
-- config.default_cursor_style = "BlinkingBlock" --  for the cursor style

-- Image Background
config.window_background_image = "C:\\Users\\ADMIN\\Desktop\\ChatGPT-anime.png" -- path to image

config.window_background_image_hsb = {
    brightness = 0.1, -- lower value for better contrast
    saturation = 1.0,
    hue = 0.0
}

-- Keybindings for pane splitting and navigation
config.keys = {{
    key = 'Enter',
    mods = 'ALT',
    action = wezterm.action.SplitHorizontal {
        domain = 'CurrentPaneDomain'
    }
}, {
    key = '\\',
    mods = 'ALT',
    action = wezterm.action.SplitVertical {
        domain = 'CurrentPaneDomain'
    }
}, {
    key = 'h',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Left'
}, {
    key = 'l',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Right'
}, {
    key = 'k',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Up'
}, {
    key = 'j',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Down'
}, {
    key = "r",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ReloadConfiguration
}, {
    key = "w",
    mods = "ALT",
    action = wezterm.action.CloseCurrentPane {
        confirm = false
    }
}, {
    key = "q",
    mods = "CTRL|SHIFT",
    action = wezterm.action.QuitApplication
}, -- Copy (Ctrl+Shift+C)
{
    key = "C",
    mods = "CTRL|SHIFT",
    action = wezterm.action.CopyTo("Clipboard")
}, -- Paste (Ctrl+Shift+V)
{
    key = "V",
    mods = "CTRL|SHIFT",
    action = wezterm.action.PasteFrom("Clipboard")
}}

-- Default directory
config.default_cwd = "C:\\Users\\ADMIN\\Desktop"

-- Return the configuration to wezterm
return config
