return {
  "jetbrains-new-dark.nvim",
  dir = "~/.config/nvim/lua/themes",
  lazy = false,
  priority = 1000,
  config = function() require("themes.jetbrains-new-dark").setup() end,
}
