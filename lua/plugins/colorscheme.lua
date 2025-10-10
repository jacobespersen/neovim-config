-- Colorscheme: Modern Solarized with Treesitter support
return {
  "maxmx03/solarized.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("solarized").setup({
      transparent = {
        enabled = false,
      },
      styles = {
        comments = { italic = true },
        functions = { italic = false },
        variables = { italic = false },
      },
    })
    vim.cmd.colorscheme("solarized")
  end,
}
