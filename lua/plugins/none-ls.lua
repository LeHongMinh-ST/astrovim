return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    -- opts variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics

    -- Only insert new sources, do not replace the existing ones
    -- (If you wish to replace, use `opts.sources = {}` instead of the `list_insert_unique` function)
    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Set a formatter
      -- Formatter
      null_ls.builtins.formatting.stylua.with {
        filetypes = { "lua" },
      },
      -- ✅ Prettier (đọc .prettierrc)
      null_ls.builtins.formatting.prettierd.with {
        filetypes = { "javascript", "typescript", "json", "jsx", "tsx" },
        condition = function(utils)
          return utils.root_has_file ".prettierrc"
            or utils.root_has_file ".prettierrc.json"
            or utils.root_has_file "prettier.config.js"
        end,
      },

      -- ✅ Biome (chỉ dùng nếu có biome.json)
      null_ls.builtins.formatting.biome.with {
        filetypes = { "javascript", "typescript", "json", "jsx", "tsx" },
        condition = function(utils) return utils.root_has_file "biome.json" or utils.root_has_file "biome.jsonc" end,
      },

      -- null_ls.builtins.formatting.phpcsfixer.with {
      --   filetypes = { "php" },
      --   -- command = "pint", -- dùng pint thay vì phpcsfixer
      --   -- args = { "--quiet", "--" }, -- args cho pint
      -- },

      -- Diagnostics
      -- null_ls.builtins.diagnostics.phpstan.with {
      --   filetypes = { "php" },
      -- },
    })
  end,
}
