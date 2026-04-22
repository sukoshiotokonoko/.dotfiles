local kmap = vim.keymap.set

kmap("n", "<leader>et", ":w | terminal python %<CR>", { desc = "Python Run in Terminal" })
kmap("n", "<leader>er", ":w | !python %<CR>", { desc = "Python Run" })
