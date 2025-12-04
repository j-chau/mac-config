return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "gopls", "ts_ls" },
			})

			local capabilities = require("blink.cmp").get_lsp_capabilities()

			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
			})

			vim.lsp.config("gopls", {
				capabilities = capabilities,
			})

			vim.lsp.config("bazelrc_lsp", {
				capabilities = capabilities,
			})

			vim.lsp.config("tflint", {
				capabilities = capabilities,
			})

			vim.lsp.config("terraformls", {
				capabilities = capabilities,
			})

			vim.lsp.config("graphql", {
				capabilities = capabilities,
			})

			vim.lsp.config("ts_ls", {
				capabilities = capabilities,
				init_options = {
					preferences = {
						importModuleSpecifier = "project-relative",
						importModuleSpecifierPreference = "relative",
					},
				},
			})

			vim.lsp.enable("lua_ls", "ts_ls", "graphql", "gopls", "bazelrc_lsp", "tflint", "terraformls", "copilot")
		end,
	},
}
