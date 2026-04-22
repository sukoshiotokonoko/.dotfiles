-- Lua-Specific Keybinds
vim.keymap.set("n", "<leader>et", ":w | terminal lua %<CR>", { desc = "Execute Lua Code via Terminal (Dynamic Code)" })
vim.keymap.set("n", "<leader>er", ":w | !lua %<CR>", { desc = "Execute Lua Code via Command (Static Code)" })
vim.keymap.set("n", "<leader>ew", ":w | !kitty lua %<CR>", { desc = "Executes Lua Code in a New Window" })
