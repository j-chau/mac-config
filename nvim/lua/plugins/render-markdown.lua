return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		code = {
			width = "block",
			min_width = 50,
			language_pad = 1,
			left_pad = 2,
			right_pad = 1,
			inline_pad = 1,
			border = "thin",
			sign = false,
		},
		heading = {
			icons = { "󰉫 ", "󰉬 ", "󰉭 ", "󰉮 ", "󰉯 ", "󰉰 " },
			backgrounds = {},
			position = "inline",
		},
		quote = {
			icon = "▍",
		},
	},
}
