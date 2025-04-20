vim.g.mapleader = " "
vim.keymap.set("n", "-", vim.cmd.Ex)

vim.g.neovide_cursor_trail_size = 0.0
vim.g.neovide_cursor_animation_length = 0.0

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 0

vim.api.nvim_set_option("clipboard", "unnamedplus")
vim.api.nvim_set_option("swapfile", false)
vim.opt.mouse = ""

vim.opt.number = true
vim.opt.signcolumn = "number"
vim.opt.cursorline = true
vim.opt.fillchars = { eob = " " }

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4


vim.diagnostic.config({
  virtual_text = {
    prefix = "",
    spacing = 2,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})
