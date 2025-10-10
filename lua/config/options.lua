-- Core Neovim Options
-- Ported from your original .vimrc with modern improvements

local opt = vim.opt

-- Basic Settings
opt.number = true
opt.relativenumber = true
opt.mouse = ""  -- Disable mouse (as in your original config)
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

-- Enable syntax highlighting
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

-- File type specific
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.ejs",
  command = "set filetype=html",
})
