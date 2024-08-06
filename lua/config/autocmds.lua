vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Fix conceallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "json5", "markdown" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

-- Disable yank highlight
vim.api.nvim_command("highlight YP_Yank ctermbg=NONE guibg=NONE")
vim.api.nvim_command('autocmd TextYankPost * lua vim.highlight.on_yank {higroup="YP_Yank", timeout=0}')

-- Change selection highlight
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Visual", { bg = "#3c3836", fg = "NONE" })
  end,
})
