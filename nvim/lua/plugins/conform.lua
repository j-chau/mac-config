return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "eslint_d", "prettierd", stop_after_first = true },
			typescript = { "eslint_d", "prettierd", stop_after_first = true },
			typescriptreact = { "eslint_d", "prettierd", stop_after_first = true },
			css = { "stylelint" },
			scss = { "stylelint" },
			html = { "prettierd" },
			json = { "prettierd" },
			yaml = { "prettierd" },
			markdown = { "prettierd" },
			graphql = { "graphql", "prettierd", stop_after_first = true },
			go = { "goimports" },
		},
		format_on_save = {
			async = false,
		},
	},
}
