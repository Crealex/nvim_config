return {
	"folke/snacks.nvim",
	opts = {
		terminal = {
			win = {
				style = "float",
				width = math.floor(vim.o.columns * 0.7),
				height = math.floor(vim.o.lines * 0.7),
				border = true,
			},
		},
	},
}
