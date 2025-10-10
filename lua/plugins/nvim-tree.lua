-- nvim-tree: File explorer (replaces NERDTree)
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- Disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,  -- Show hidden files (like NERDTreeShowHidden=1)
      },
      git = {
        enable = true,
        ignore = false,
      },
    })
  end,
}
