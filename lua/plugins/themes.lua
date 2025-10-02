return {
  {
    "xiantang/darcula-dark.nvim",
    name = "darcula-dark",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      -- setup must be called before loading
      require("darcula").setup {
        override = function(_c)
          return {
            background = "#333333",
            dark = "#000000",
          }
        end,
        opt = {
          integrations = {
            telescope = false,
            lualine = true,
            lsp_semantics_token = true,
            nvim_cmp = true,
            dap_nvim = true,
          },
        },
      }
    end,
  },
}
