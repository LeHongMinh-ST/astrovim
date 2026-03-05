-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",
        "intelephense",
        "vtsls",
        "jdtls",
        "ruff-lsp", -- Python LSP server (fast and modern)

        -- install formatters
        "stylua",
        "pint",
        "phpstan",
        "biome",
        "ruff", -- Python formatter and linter (all-in-one)

        -- install debuggers
        "debugpy", -- Python debugger

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
