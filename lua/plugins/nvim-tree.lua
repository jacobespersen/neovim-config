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

    -- Set keybinding for finding current file in tree (Ctrl-f)
    vim.keymap.set("n", "<C-f>", function()
      require("nvim-tree.api").tree.find_file({ open = true, focus = true })
    end, { noremap = true, silent = true, desc = "Find current file in nvim-tree" })

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
      -- Custom keymaps for nvim-tree
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")

        -- Default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- Custom mapping: 's' to open in vertical split
        vim.keymap.set('n', 's', api.node.open.vertical, { buffer = bufnr, noremap = true, silent = true, nowait = true, desc = "Open: Vertical Split" })
      end,
    })
  end,
}
