return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "AndreM222/copilot-lualine" },
	opts = {
		options = {
			theme = "rose-pine",
		},
		sections = {
			lualine_b = {
				{
					require("noice").api.statusline.mode.get,
					cond = require("noice").api.statusline.mode.has,
					color = { fg = "#f6c177" }, -- rose-pine gold
				},
				{ "branch" },
				{ "diff" },
			},
			lualine_c = {
				{
					"filename",
					path = 1,
					symbols = {
						modified = "",
					},
				},
			},
			lualine_x = { "filetype" },
			lualine_y = {
				{
					"diagnostics",
					symbols = {
						error = " ",
						warn = " ",
						info = " ",
						hint = "󰌶 ",
					},
				},
				{ "lsp_status", icon = "", ignore_lsp = { "null-ls", "copilot" }, separator = "" },
				{ "copilot" },
			},
		},
	},
}
