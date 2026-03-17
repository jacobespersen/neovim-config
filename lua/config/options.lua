-- Core Neovim Options
-- Ported from your original .vimrc with modern improvements

local opt = vim.opt

-- Basic Settings
opt.number = true
opt.relativenumber = true
opt.mouse = "a"  -- Enable mouse in all modes
opt.spell = true
opt.spelllang = "en_us"
opt.modifiable = true
opt.swapfile = false  -- No swap files

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

-- Visual
opt.termguicolors = true  -- Enable true color support
opt.background = "dark"
opt.laststatus = 2  -- Always show status line
opt.signcolumn = "yes"  -- Always show sign column

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Performance
opt.updatetime = 250
opt.timeoutlen = 300

-- Completion
opt.completeopt = "menu,menuone,noselect"

-- Auto-reload files changed on disk (e.g. by Claude Code)
opt.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
  command = "checktime",
})

-- Start a named RPC socket so external tools (Claude Code hooks) can trigger reloads.
-- Socket name is derived from cwd so multiple Neovim instances get unique sockets.
local sock_name = "/tmp/nvim-" .. vim.fn.getcwd():gsub("/", "-"):sub(2) .. ".sock"
pcall(vim.fn.serverstart, sock_name)

-- File type specific
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.ejs",
  command = "set filetype=html",
})
