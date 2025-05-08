require("j-chau.remap")

vim.cmd("colorscheme rose-pine")

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none"})

vim.diagnostic.config({ virtual_text = true, virtual_lines = false })
vim.opt.termguicolors = true
