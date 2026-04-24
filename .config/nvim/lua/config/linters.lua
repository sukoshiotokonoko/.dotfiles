-- Sets Up Linters
require('lint').linters_by_ft = {
    yaml = { 'yamllint' },
}

-- Auto-Enables Linters
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
      require("lint").try_lint()
  end,
})
