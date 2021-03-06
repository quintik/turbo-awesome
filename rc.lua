-- Init theme
local theme = require "themes.dracula"
local beautiful = require "beautiful"
beautiful.init(theme)

local HOME = os.getenv("HOME")

-- Default modkey
modkey = "Mod4"

-- Terminal: kitty
terminal = "kitty"

-- Browser: firefox
browser = HOME .. "/Downloads/firefox/firefox"

-- Launcher: rofi
launcher = "rofi -show drun -theme " .. theme.rofi

-- File Manager: Thunar
filemanager = terminal .. " -e nnn -dDHo"

-- Music player: cmus
musicplayer = terminal .. " -e cmus"

-- Screenshot command
screenshot = "flameshot gui"

-- Set up global/client bindings
-- NOTE: Needs to be called first for some reason.
require "bindings"

-- Delegate everything else to configuration
require "cfg.gamma"
