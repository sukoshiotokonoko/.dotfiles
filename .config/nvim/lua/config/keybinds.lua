local kmap = vim.keymap.set

vim.g.mapleader = " "

-- Telescope Keybinds
kmap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Fuzzy-Find Files" })
kmap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Search in Files" })
kmap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope Buffers" })

-- Oil Keybinds
kmap("n", "<leader>o", ":Oil<CR>", { desc = "Open Oil File Explorer" }) 

--BufDel Keybinds
kmap("n", "<leader>bd", ":BufDel<CR>", { desc = "Delete Current Buffer" })

-- DAP-UI Keybinds
kmap("n", "<leader>dt", function()
    require("dapui").toggle("tray")
end, { desc = "Toggle Dap-Ui Tray" })
kmap("n", "<leader>ds", function()
    require("dapui").toggle("sidebar")
end, { desc = "Toggle Dap-Ui Sidebar" })

-- Neovim Keybinds
kmap("n", "<leader>ww", ":w<CR>", { desc = "Write" })
kmap("n", "<leader>wq", ":wq<CR>", { desc = "Write-Quit" })
kmap("n", "<leader>qq", ":q<CR>", { desc = "Quit" })
kmap("n", "<leader>q1", ":q!<CR>", { desc = "Force Quit" })
kmap("n", "q", "<Nop>", { noremap = true, silent = true })
kmap("n", "@", "<Nop>", { noremap = true, silent = true })
kmap("n", "<leader>rs", "q", { desc = "Starts Recording" })
kmap("n", "<leader>rp", "@", { desc = "Plays Recoring" })

kmap("n", "<C-h>", "<C-w>h")
kmap("n", "<C-j>", "<C-w>j")
kmap("n", "<C-k>", "<C-w>k")
kmap("n", "<C-l>", "<C-w>l")

kmap("n", "<A-h>", "<C-w>H")
kmap("n", "<A-j>", "<C-w>J")
kmap("n", "<A-k>", "<C-w>K")
kmap("n", "<A-l>", "<C-w>L")

kmap("n", "<leader>ee", ":lua vim.diagnostic.open_float()<CR>", { desc = "Expand Errors" })

-- Directory-Specific Keybinds
vim.api.nvim_create_autocmd("BufRead", {
    pattern = "*/Projects/MinecraftJavaMods/*",
    callback = function()
        kmap("n", "<leader>ec", "<cmd>!./gradlew runClient<CR>", { desc = "Runs Minecraft Client" })
    end,
})

vim.api.nvim_create_autocmd("BufRead", {
    pattern = "*/Projects/Games/love/*",
    callback = function()
        kmap("n", "<leader>el", ":w | !love %:h<CR>", { desc = "Execute Love Code" })
    end,
})

--[[
vim.api.nvim_create_autocmd("BufRead", {
    pattern = "*/Projects/*",
    callback = function()
       vim.cmd("!cd $(pwd | grep -Eo "^/[^/]*(/)[^/]*(/)[^/]*(/)[^/]*(/)")") 
    end,
})
--]]
-- Python Keybinds
--kmap("n", "<leader>pt", ":w | terminal python %<CR>", { desc = "Python Run in Terminal" })
--kmap("n", "<leader>pr", ":w | !python %<CR>", { desc = "Python Run" })

-- blink-cmp Keybinds
kmap("i", "<C-l>", function()
	require("blink.cmp").accept()
end, { desc = "Accepts currently-selected item." })

-- OpenSCAD.nvim Keybinds
vim.api.nvim_create_autocmd("FileType", {
    pattern = "openscad",
    callback = function()
        kmap("n", "<leader>cs", "<cmd> lua require'openscad'.toggle()<cr>", { desc = "Launch OpenSCAD Cheatsheet" })
        kmap("n", "<leader>of", "<cmd> lua require'openscad'.exec_openscad()<cr>", { desc = "Launch OpenSCAD Preview" })
    end,
})
