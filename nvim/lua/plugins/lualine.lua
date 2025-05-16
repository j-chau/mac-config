return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      theme = "rose-pine",
    },
    sections = {
      lualine_c = {
        { "filename", path = 1 },
      },
      lualine_y = {
        { "lsp_status", ignore_lsp = { "null-ls" } },
      },
    },
  },
}
