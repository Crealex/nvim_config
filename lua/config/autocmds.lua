-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
local group = vim.api.nvim_create_augroup("AutoSaveOnFocus", { clear = true })

-- Perte de focus : sauve tout, mais silencieux
vim.api.nvim_create_autocmd("FocusLost", {
	group = group,
	callback = function()
		vim.cmd("silent! wall")
	end,
})

-- Quand tu quittes un buffer/fenêtre : sauve seulement si c'est un vrai fichier éditable
vim.api.nvim_create_autocmd({ "BufLeave", "WinLeave" }, {
	group = group,
	callback = function(args)
		local buf = args.buf
		local bo = vim.bo[buf]
		if bo.readonly or not bo.modifiable then
			return
		end
		if bo.buftype ~= "" then
			return
		end -- ignore help, terminal, quickfix, etc.
		if bo.filetype == "gitcommit" then
			return
		end
		vim.cmd("silent! update")
	end,
})

-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
