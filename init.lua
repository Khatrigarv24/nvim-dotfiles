vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- disable netrw so Flyer (or any other plugin) can take over directory browsing
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")
require("config.keymaps")
require("config.options")
