-- Treesitter: Modern syntax highlighting
-- Note: As of July 2025, use 'main' branch
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = "main",
  config = function()
    -- The API changed - now use require("nvim-treesitter").setup()
    require("nvim-treesitter").setup({
      -- Install parsers for languages you use
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "python",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "json",
        "yaml",
        "markdown",
        "bash",
      },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      auto_install = true,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      indent = {
        enable = true,
      },
    })
  end,
}
