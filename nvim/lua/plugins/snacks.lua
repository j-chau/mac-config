return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		dashboard = {
			enabled = true,
			width = 60,
			pane_gap = 10,
			row = nil,
			preset = {
        -- stylua: ignore start
        header = [[
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡜⠁⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⠴⠋⠀⠀⠀⠹⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠖⠋⠉⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠓⠦⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⡀⠀⠀⢀⣠⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠓⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⡴⠋⠁⠀⠉⢦⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⢦⣀⠀⢀⣠⠴⠚⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⢰⠃⢀⠈⢀⠨⠀⠱⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠉⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⢸⡄⠀⠠⢁⠂⠀⠀⠀⠀⠀⠀⠀⠰⣿⡗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠙⠓⠲⠦⢤⣄⣀⡈⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠘⠤⠴⣆⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠶⠦⣄⠀⠀⠀⠀⠀⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠈⠉⠙⠓⠲⠦⢤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⢠⣶⡆⢠⡏⠀⡀⠀⠀⠳⡀⠀⠀⠀⠀⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠓⠲⠦⢤⣄⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠁⢸⠀⠀⡠⢀⠁⠀⠙⠀⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠒⠶⠤⣤⣀⣀⠀⠀⠀⠀⠀⢸⡀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠒⠶⠤⣬⣧⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣧⠀⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠒⠶⠤⣤⣀⣀⠀⠀⠀⠘⣆⠀⠀⠀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠒⠶⠽⣤⣀⣀⠀⠀⠀⠀
	     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠒⠶
	           ]],
				-- stylua: ignore end
			},
			sections = {
				{
					-- stylua ignore start
					{ text = "", action = ":lua Snacks.dashboard.pick('files')", key = "f" },
					{ text = "", action = ":ene | startinsert", key = "n" },
					{ text = "", action = ":lua Snacks.dashboard.pick('live_grep')", key = "g" },
					{ text = "", action = ":lua Snacks.dashboard.pick('oldfiles')", key = "r" },
					-- stylua ignore end
				},
				{ section = "header" },
				{ section = "startup", pane = 2, padding = 2 },
				{
					pane = 2,
					gap = 1,
					padding = 2,
					{
						{
							text = {
								{ " Find file", width = 27, hl = "special" },
								{ "f", hl = "key", width = 5 },
								{ " Config", width = 27, hl = "special" },
								{ "c", hl = "key" },
							},
							indent = 3,
							action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
							key = "c",
						},
						{
							text = {
								{ " New file", width = 27, hl = "special" },
								{ "n", hl = "key", width = 5 },
								{ " File explorer", width = 27, hl = "special" },
								{ "e", hl = "key" },
							},
							action = ":Neotree",
							key = "e",
						},
						{
							text = {
								{ " Find text", width = 27, hl = "special" },
								{ "g", hl = "key", width = 5 },
								{ "󰒲 Lazy", width = 27, hl = "special" },
								{ "L", hl = "key" },
							},
							action = ":Lazy",
							enabled = package.loaded.lazy ~= nil,
							key = "L",
						},
						{
							text = {
								{ " Recent files", width = 27, hl = "special" },
								{ "r", hl = "key", width = 5 },
								{ " Quit", width = 27, hl = "special" },
								{ "q", hl = "key" },
							},
							action = ":qa",
							key = "q",
						},
					},
				},
				{
					pane = 2,
					icon = " ",
					title = "Recent Files",
					section = "recent_files",
					indent = 2,
					padding = 2,
				},
				{
					pane = 2,
					icon = " ",
					title = "Git Status",
					section = "terminal",
					enabled = function()
						return Snacks.git.get_root() ~= nil
					end,
					cmd = "git status --short --branch --renames",
					height = 5,
					padding = 2,
					ttl = 5 * 60,
					indent = 3,
				},
			},
		},
		bigfile = { enabled = true },
		indent = { enabled = true, animate = { enabled = false } },
		input = { enabled = true },
		lazygit = { enabled = true },
		picker = {
			enabled = true,
			win = {
				input = {
					keys = {
						["<Esc>"] = { "close", mode = { "n", "i" } },
					},
				},
			},
			matchers = {
				frecency = true,
			},
			formatters = {
				file = {
					truncate = 65,
				},
			},
		},
		notifier = { enabled = true, timeout = 5000 },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
	},
	keys = {
    --stylua: ignore start
    { "<leader>ff", function() Snacks.picker.files({ hidden = true, ignored = true, exclude = { "node_modules" } }) end, desc = "Find Files" },
    { "<leader>fb", function() Snacks.picker.buffers() end,                                                              desc = "Find Buffers" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end,                              desc = "Find Config File" },
    { "<leader>fg", function() Snacks.picker.git_diff() end,                                                             desc = "Find Git Files" },
    { "<leader>fr", function() Snacks.picker.recent() end,                                                               desc = "Recent Files" },
    -- { "<leader>fp", function() Snacks.picker.projects() end,                                desc = "Projects" }, -- requires fdfind
    { "<leader>bl", function() Snacks.picker.buffers() end,                                                              desc = "View all buffer list" },
    { "<leader>//", function() Snacks.picker.grep() end,                                                                 desc = "Search (grep)" },
    { "<leader>/h", function() Snacks.picker.grep({ hidden = true, ignored = true, exclude = { "node_modules" } }) end,  desc = "Search All Files (include hidden files)" },
    { "<leader>/f", function() Snacks.picker.grep({ dirs = { "frontend" } }) end,                                        desc = "Search Frontend Files Only" },
    { "<leader>/w", function() Snacks.picker.grep_word() end,                                                            desc = "Search visual selection or word",        mode = { "n", "x" } },
    { "<leader>gg", function() Snacks.lazygit() end,                                                                     desc = "Lazygit" },
    { "<leader>sh", function() Snacks.picker.help() end,                                                                 desc = "Help Pages" },
    { "<leader>sc", function() Snacks.picker.command_history() end,                                                      desc = "Command History" },
    { "<leader>sn", function() Snacks.notifier.show_history() end,                                                       desc = "Notification History" },
    { "gd",         function() Snacks.picker.lsp_definitions() end,                                                      desc = "Go to Definition" },
    { "gI",         function() Snacks.picker.lsp_implementations() end,                                                  desc = "Go to Implementation" },
		--stylua: ignore end
	},
}
