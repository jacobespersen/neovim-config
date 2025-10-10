-- Snacks.nvim: Collection of awesome Neovim utilities
-- This enhances your Neovim experience with many quality-of-life features
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- 🎨 VISUAL ENHANCEMENTS

    -- Smooth scrolling (much nicer visual experience)
    scroll = { enabled = true },

    -- Beautiful notifications (replaces default vim.notify)
    notifier = {
      enabled = true,
      timeout = 3000,
      style = "compact",  -- or "fancy" for more detail
    },

    -- Indent guides with scope highlighting
    indent = {
      enabled = true,
      animate = {
        enabled = true,
        duration = {
          step = 20,
          total = 300,
        },
      },
    },

    -- Dim inactive portions of code (helps focus)
    dim = { enabled = true },

    -- Beautiful status column (line numbers area)
    statuscolumn = { enabled = true },

    -- Dashboard (startup screen)
    dashboard = {
      enabled = true,
      sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
      },
    },

    -- 🛠️ PRODUCTIVITY FEATURES

    -- Better buffer delete (preserves window layout)
    bufdelete = { enabled = true },

    -- LSP reference highlighting (auto-highlights word under cursor)
    words = { enabled = true },

    -- Zen mode for distraction-free coding
    zen = {
      enabled = true,
      toggles = {
        dim = true,
        git_signs = false,
        mini_diff_signs = false,
        diagnostics = false,
        inlay_hints = false,
      },
      zoom = {
        width = 120,
      },
    },

    -- Scratch buffers for quick notes
    scratch = { enabled = true },

    -- Better rename (LSP file renaming)
    rename = { enabled = true },

    -- ⚡ PERFORMANCE

    -- Big file handling (disables features on large files)
    bigfile = {
      enabled = true,
      size = 1024 * 1024,  -- 1MB threshold
    },

    -- Quickfile (faster initial file loading)
    quickfile = { enabled = true },

    -- 🔧 GIT INTEGRATION

    git = { enabled = true },

    -- Open file/line/commit in browser (GitHub/GitLab/etc)
    gitbrowse = { enabled = true },

    -- LazyGit integration (if installed)
    lazygit = { enabled = true },

    -- 🎯 UTILITY FEATURES

    -- Picker for finding files (replaces Telescope)
    picker = {
      enabled = true,
      -- Use ripgrep for finding files
      sources = {
        files = {
          hidden = true,
        },
      },
    },

    -- Better vim.ui.input
    input = { enabled = true },

    -- Terminal management (used by claudecode)
    terminal = { enabled = true },

    -- Debug utilities
    debug = { enabled = true },

    -- Profiler for performance analysis
    profiler = { enabled = true },

    -- Toggle utilities with which-key integration
    toggle = { enabled = true },
  },

  keys = {
    -- File finding (replaces Telescope)
    { "<leader>o", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>O", function() Snacks.picker.files({ hidden = true }) end, desc = "Find Files (including hidden)" },
    { "<leader>m", function() Snacks.picker.buffers() end, desc = "Find Buffers" },
    { "<leader>fg", function() Snacks.picker.grep() end, desc = "Live Grep" },
    { "<leader>fw", function() Snacks.picker.grep_word() end, desc = "Grep Word Under Cursor" },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "Help Tags" },

    -- Buffer management
    { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
    { "<leader>bo", function() Snacks.bufdelete.other() end, desc = "Delete Other Buffers" },

    -- Git
    { "<leader>gb", function() Snacks.gitbrowse() end, desc = "Git Browse (open in browser)" },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "LazyGit" },
    { "<leader>gl", function() Snacks.lazygit.log() end, desc = "LazyGit Log" },
    { "<leader>gf", function() Snacks.lazygit.log_file() end, desc = "LazyGit Current File" },

    -- Zen mode
    { "<leader>z", function() Snacks.zen() end, desc = "Toggle Zen Mode" },
    { "<leader>Z", function() Snacks.zen.zoom() end, desc = "Toggle Zoom" },

    -- Scratch buffer
    { "<leader>.", function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
    { "<leader>S", function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },

    -- Notifications
    { "<leader>nh", function() Snacks.notifier.show_history() end, desc = "Notification History" },
    { "<leader>nd", function() Snacks.notifier.hide() end, desc = "Dismiss Notifications" },

    -- LSP rename with file operations
    { "<leader>rn", function() Snacks.rename.rename_file() end, desc = "Rename File" },

    -- Debug/profiler
    { "<leader>ps", function() Snacks.profiler.scratch() end, desc = "Profiler Scratch" },

    -- Terminal (additional to what claudecode uses)
    { "<c-/>", function() Snacks.terminal() end, desc = "Toggle Terminal", mode = { "n", "t" } },
    { "<c-_>", function() Snacks.terminal() end, desc = "which_key_ignore", mode = { "n", "t" } },
  },

  init = function()
    -- Set up nice notifications
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        -- Create some nice autocommands

        -- Highlight on yank
        vim.api.nvim_create_autocmd("TextYankPost", {
          callback = function()
            vim.highlight.on_yank()
          end,
        })

        -- Show notification when LSP attaches
        vim.api.nvim_create_autocmd("LspAttach", {
          callback = function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            if client then
              Snacks.notify("LSP attached: " .. client.name, { title = "LSP", level = "info" })
            end
          end,
        })
      end,
    })
  end,
}
