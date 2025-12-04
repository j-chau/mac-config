return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "modern",
		spec = {
			{ "<leader>x", group = "Diagnostics" },
			{ "<leader>a", group = "AI Tools", icon = { icon = "󱚣", color = "grey" } },
			{ "<leader>c", group = "Code actions" },
			{ "<leader>f", group = "File search" },
			{ "<leader>s", group = "Help / History", icon = { icon = "", color = "yellow" } },
			{ "<leader>/", group = "Search options" },
			{ "<leader>b", group = "Buffers" },
			{ "<leader>n", icon = "" },
		},
		icons = {
			group = "+ ",
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
