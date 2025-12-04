local function custom_filetype(filetype)
	if filetype == "typescriptreact" then
		return "tsx"
	end
	return filetype
end

local function custom_progress(progress)
	if progress == "Top" then
		return "TOP"
	elseif progress == "Bot" then
		return "END"
	else
		return progress
	end
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "AndreM222/copilot-lualine" },
	opts = {
		options = {
			theme = "rose-pine",
			globalstatus = true,
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
			lualine_x = {
				{
					"diagnostics",
					symbols = {
						error = " ",
						warn = " ",
						info = " ",
						hint = "󰌶 ",
					},
				},
				{ "filetype", fmt = custom_filetype },
			},
			lualine_y = {
				{ "lsp_status", icon = "", ignore_lsp = { "copilot" }, separator = "" },
				{ "copilot" },
			},
			lualine_z = {
				{ "location" },
				{ "progress", fmt = custom_progress },
			},
		},
	},
}
