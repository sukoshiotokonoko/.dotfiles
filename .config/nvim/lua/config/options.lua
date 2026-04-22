-- o Options:
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.mouse = "a"
vim.o.background = 'dark'
vim.o.expandtab = true

-- opt Options:
vim.opt.scrolloff = 8
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorcolumn = true

-- Theme
vim.cmd("colorscheme carbonfox")

-- api Options:
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
	    timeout = 150,           
    	})
    end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = "help",
    command = ":echo 'Hello' <CR>",
})

-- Treesitter Options
vim.api.nvim_create_autocmd('FileType', {
    pattern = { '<filetype>' },
    callback = function() vim.treesitter.start() end,
})

-- LSP Options
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			workspace = {
				library = {
                    "${3rd}/love2d/library",
				},
			},
		},
	},
})

-- Turn on DAP-UI
require("dapui").setup()
