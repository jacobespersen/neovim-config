-- Telescope: Fuzzy finder (replaces ctrlp, command-t, ag.vim)
return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = function()
        return vim.fn.executable("make") == 1
      end,
    },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-u>"] = false,
            ["<C-d>"] = false,
            -- Exit on Ctrl-c or Esc
            ["<C-c>"] = actions.close,
          },
        },
        layout_config = {
          horizontal = {
            preview_width = 0.6,
          },
        },
        -- Ignore these patterns
        file_ignore_patterns = {
          "node_modules",
          ".git/",
          "%.lock",
        },
      },
      pickers = {
        find_files = {
          hidden = true,
          -- Try fd first, fallback to find
          find_command = vim.fn.executable("fd") == 1
            and { "fd", "--type", "f", "--hidden", "--exclude", ".git" }
            or vim.fn.executable("rg") == 1
            and { "rg", "--files", "--hidden", "--glob", "!.git/*" }
            or nil,  -- Use default if neither fd nor rg available
        },
      },
    })

    -- Enable telescope fzf native, if installed
    pcall(telescope.load_extension, "fzf")
  end,
}
