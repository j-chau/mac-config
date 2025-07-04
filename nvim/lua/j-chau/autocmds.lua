-- Show warning when opening generated files
vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*",
	callback = function()
		for _, line in ipairs(vim.api.nvim_buf_get_lines(0, 0, 10, false)) do
			if line:lower():match("do not edit") ~= nil or line:lower():match("code generated by") ~= nil then
				Snacks.notifier.notify(
					"DO NOT EDIT!\nThis file appears to be generated",
					vim.log.levels.WARN,
					{ title = "Generated File" }
				)
				break
			end
		end
	end,
})
