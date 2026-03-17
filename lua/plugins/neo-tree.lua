-- neo-tree: File explorer with git-status source support (replaces nvim-tree)
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  config = function()
    -- Disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("neo-tree").setup({
      close_if_last_window = false,
      window = {
        width = 30,
        mappings = {
          ["s"] = "open_vsplit",
          ["l"] = "none",  -- unmap l so global l→k remap (cursor up) works
          [";"] = "open",  -- ; is user's "right" key (open/expand node)
          ["/"] = "none",  -- disable filter, use standard vim / search
        },
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = {
          enabled = true,
        },
      },
      git_status = {
        window = {
          position = "left",
          width = 30,
          mappings = {
            ["gd"] = "show_diff",
          },
        },
      },
    })

    -- Toggle file explorer
    vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", { noremap = true, silent = true, desc = "Toggle neo-tree" })

    -- Reveal current file in tree (replaces nvim-tree's C-f)
    vim.keymap.set("n", "<C-f>", ":Neotree reveal<CR>", { noremap = true, silent = true, desc = "Reveal current file in neo-tree" })

    -- Show only git-changed files in tree
    vim.keymap.set("n", "<leader>gc", ":Neotree source=git_status<CR>", { noremap = true, silent = true, desc = "Show git-changed files in neo-tree" })
  end,
}
