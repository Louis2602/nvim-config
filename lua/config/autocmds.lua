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
