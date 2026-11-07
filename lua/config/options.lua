-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.mouse = ""

-- Treat .h headers as C and .hpp headers as C++
vim.filetype.add({
  extension = {
    h = "c",
    hpp = "cpp",
  },
})
