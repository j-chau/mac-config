return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = { "lua", "javascript", "typescript", "go" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
}
