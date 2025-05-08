local wk = require("which-key")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>Q", ":conf qa<CR>", { desc = "Quit all (with confirm)" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines up" })
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "Move lines down" })

vim.keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Search and replace" }
)

-- Telescope
wk.add({
	{ "<leader>p", group = "File search" },
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Telescope search files" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Telescope find git files only" })

-- Neotree
vim.keymap.set("n", "<C-n>", ":Neotree<CR>")

-- LSPs
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Displays hover information" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "View code actions" })

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format code" })

-- Gitsigns
wk.add({
	{ "<leader>h", group = "Gitsigns" },
	{ "<leader>ht", group = "Gitsigns toggles" },
})

local gitsigns = require("gitsigns")
vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk, { desc = "Stage hunk" })
vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Reset hunk" })

vim.keymap.set("v", "<leader>hs", function()
	gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
end, { desc = "Stage hunk" })

vim.keymap.set("v", "<leader>hr", function()
	gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
end, { desc = "Reset hunk" })

vim.keymap.set("n", "<leader>hS", gitsigns.stage_buffer, { desc = "Stage buffer" })
vim.keymap.set("n", "<leader>hR", gitsigns.reset_buffer, { desc = "Reset buffer" })
vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Preview hunk" })
vim.keymap.set("n", "<leader>hi", gitsigns.preview_hunk_inline, { desc = "Preview hunk inline" })

vim.keymap.set("n", "<leader>hb", function()
	gitsigns.blame_line({ full = true })
end, { desc = "Git blame" })

vim.keymap.set("n", "<leader>hd", gitsigns.diffthis, { desc = "Show diff" })

vim.keymap.set("n", "<leader>htb", gitsigns.toggle_current_line_blame, { desc = "Toggle git blame (inline)" })
vim.keymap.set("n", "<leader>htw", gitsigns.toggle_word_diff, { desc = "Toggle word diff" })
