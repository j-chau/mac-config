require("j-chau.remap")
require("j-chau.autocmds")

vim.cmd("colorscheme rose-pine")

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true

vim.opt.linebreak = true

vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.mouse = ""

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none"})

vim.opt.termguicolors = true

vim.opt.showmode = false -- hide mode in status line (for lualine)

vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.HINT] = " ",
			[vim.diagnostic.severity.INFO] = " ",
		},
	},
	virtual_text = true,
	virtual_lines = false,
	underline = true,
})

-- Customize the LSP hover handler
vim.keymap.set("n", "K", require("noice.lsp").hover)
