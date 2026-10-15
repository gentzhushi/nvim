-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- lua/config/autocmds.lua
local indent = {
  -- filetype = { width, use_spaces }
  lua = { 2, true },
  typescript = { 2, true },
  typescriptreact = { 2, true },
  c = { 8, false },
  cpp = { 4, true },
  python = { 4, true },
  rust = { 4, true },
}

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("user_indent", { clear = true }),
  pattern = vim.tbl_keys(indent),
  callback = function(ev)
    local width, spaces = unpack(indent[ev.match])
    local bo = vim.bo[ev.buf]
    bo.tabstop = width
    bo.shiftwidth = width
    bo.softtabstop = width
    bo.expandtab = spaces
  end,
})
