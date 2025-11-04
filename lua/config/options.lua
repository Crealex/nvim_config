-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- relativenumber:
vim.opt.relativenumber = true
-- display spaces and tabs characters
vim.opt.list = true
-- set how spaces and tabs display
vim.opt.listchars = {
	tab = "» ", -- les tabs seront affichés comme “»␣”
	trail = "·", -- les espaces de fin de ligne seront des points
	extends = "›",
	precedes = "‹",
	nbsp = "␣",
}
-- set tab with a real tab and a with of 4 spaces
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
-- s'assurer que nvim voit le binaire cmatrix pour ubuntu
vim.env.PATH = (os.getenv("HOME") .. "/.local/bin:") .. (vim.env.PATH or "")
-- Autosave
vim.opt.autowriteall = true
