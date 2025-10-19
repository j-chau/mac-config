local wk = require("which-key")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>Q", ":conf qa<CR>", { desc = "Quit all (with confirm)" })
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<ESC>:w<CR>", { desc = "Enter normal mode and save" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines up" })
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "Move lines down" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to the down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to the up window" })

vim.keymap.set("v", "<leader>c", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set("v", "<leader>v", '"+P', { desc = "Paste from clipboard" })
vim.keymap.set("v", "<leader>x", '"+d', { desc = "Cut to clipboard" })

vim.keymap.set(
	"n",
	"<leader>/s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gcI<Left><Left><Left>]],
	{ desc = "Search and replace" }
)

-- Snacks
wk.add({
	{ "<leader>f", group = "File search" },
	{ "<leader>s", group = "Help / History" },
	{ "<leader>/", group = "Search options" },
})

-- Neotree
vim.keymap.set("n", "<C-n>", ":Neotree<CR>")
vim.keymap.set("n", "<leader>n", ":Neotree reveal<CR>", { desc = "Reveal current file in Neotree" })

-- LSPs
wk.add({
	{ "<leader>c", group = "Code actions" },
})
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Displays hover information" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "View code actions" })

vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format code" })

-- Harpoon
local harpoon = require("harpoon")
harpoon:setup({
	settings = {
		save_on_toggle = true,
	},
})

wk.add({
	{ "<leader>b", group = "Buffers" },
})

-- stylua: ignore start
vim.keymap.set("n", "<leader>ba", function() harpoon:list():add() end, { desc = "Add buffer to list" })
vim.keymap.set("n", "<leader>bl",
  function()
    harpoon.ui:toggle_quick_menu(harpoon:list(),
      { border = "rounded", title_pos = "center", title = " Harpoon " })
  end,
  { desc = "View saved buffer list" })
vim.keymap.set("n", "<leader>bL", function() Snacks.picker.buffers() end, { desc = "View all buffer list" })
vim.keymap.set("n", "<leader>bn", function() harpoon:list():next() end, { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>bp", function() harpoon:list():prev() end, { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>b1", function() harpoon:list():select(1) end, { desc = "Go to buffer #1" })
vim.keymap.set("n", "<leader>b2", function() harpoon:list():select(2) end, { desc = "Go to buffer #2" })
vim.keymap.set("n", "<leader>b3", function() harpoon:list():select(3) end, { desc = "Go to buffer #3" })
vim.keymap.set("n", "<leader>b4", function() harpoon:list():select(4) end, { desc = "Go to buffer #4" })
-- stylua: ignore end

-- Gitsigns
wk.add({
	{ "<leader>g", group = "Gitsigns" },
	{ "<leader>gt", group = "Gitsigns toggles" },
})

local gitsigns = require("gitsigns")
vim.keymap.set("n", "<leader>gs", gitsigns.stage_hunk, { desc = "Stage hunk" })
vim.keymap.set("n", "<leader>gr", gitsigns.reset_hunk, { desc = "Reset hunk" })

vim.keymap.set("v", "<leader>gs", function()
	gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
end, { desc = "Stage hunk" })

vim.keymap.set("v", "<leader>gr", function()
	gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
end, { desc = "Reset hunk" })

vim.keymap.set("n", "<leader>gS", gitsigns.stage_buffer, { desc = "Stage buffer" })
vim.keymap.set("n", "<leader>gR", gitsigns.reset_buffer, { desc = "Reset buffer" })
vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, { desc = "Preview hunk" })
vim.keymap.set("n", "<leader>gi", gitsigns.preview_hunk_inline, { desc = "Preview hunk inline" })

vim.keymap.set("n", "<leader>gb", function()
	gitsigns.blame_line({ full = true })
end, { desc = "Git blame" })

vim.keymap.set("n", "<leader>gd", gitsigns.diffthis, { desc = "Show diff" })

vim.keymap.set("n", "<leader>gtb", gitsigns.toggle_current_line_blame, { desc = "Toggle git blame (inline)" })
vim.keymap.set("n", "<leader>gtw", gitsigns.toggle_word_diff, { desc = "Toggle word diff" })
