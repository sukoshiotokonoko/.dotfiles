require("config.lazy") -- Runs lazy.nvim, located in lua/config, and all plugins in the lua/plugins directory.
require("config.keybinds") -- Runs my keybinds, located in lua/config.
require("config.options") -- Runs my custom options, located in lua/config.
require("config.godot") -- Makes sure nvim works with Godot.
require("config.linters") -- Enables and Starts Linters; Must Be Manually Config'd
