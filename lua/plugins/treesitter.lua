if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "php",
      "python",
      "javascript",
      "typescript",
      "tsx",
      "html",
      "java",
      "json",
      "vue",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
