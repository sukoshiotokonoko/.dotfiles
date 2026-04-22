-- Keybinds
vim.keymap.set("n", "<leader>et", ":w | terminal java % %<CR>", { desc = "Execute Java Code via Terminal (Dynamic Code)" })
vim.keymap.set("n", "<leader>er", ":w | !java %<CR>", { desc = "Execute Java Code via Command (Static Code)" })

-- Minecraft Keybinds
vim.keymap.set("n", "<leader>fs", ":Telescope find_files cwd=/home/meprimaryuser/Projects/MinecraftJavaMods/minecraftSources<CR>", { desc = "Search Minecraft Sources" })
--vim.keymap.set("n", "<leader>ec", "!./gradlew runClient<CR>", { desc = "Launch Minecraft Client" })
--vim.keymap.set("n", "<leader>es", "!./gradlew runServer<CR>", { desc = "Launch Minecraft Client" })
