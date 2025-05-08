return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = { "lua", "javascript", "typescript", "go" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
}
