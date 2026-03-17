# Neovim Config

## Structure

```
~/.config/nvim/
├── init.lua
├── lua/
│   ├── config/
│   │   ├── options.lua
│   │   └── keymaps.lua
│   └── plugins/
│       ├── autopairs.lua
│       ├── claudecode.lua
│       ├── colorscheme.lua    # catppuccin macchiato
│       ├── comment.lua
│       ├── copilot.lua
│       ├── gitsigns.lua
│       ├── lsp.lua            # mason + lspconfig
│       ├── lualine.lua
│       ├── neo-tree.lua
│       ├── neoscroll.lua
│       ├── none-ls.lua
│       ├── snacks-extras.lua  # pickers, dashboard, etc.
│       ├── surround.lua
│       └── treesitter.lua
├── KEYBINDINGS.md
└── README.md
```

## Plugins

- **catppuccin** — colorscheme (macchiato)
- **lazy.nvim** — plugin manager
- **neo-tree** — file explorer
- **snacks.nvim** — pickers, dashboard, bufdelete, notifier
- **nvim-lspconfig + mason** — LSP
- **nvim-treesitter** — syntax highlighting
- **gitsigns** — git gutter signs, hunk nav, blame
- **lualine** — statusline
- **copilot.lua** — GitHub Copilot
- **none-ls** — formatters/linters
- **Comment.nvim** — commenting
- **nvim-autopairs** — auto pairs
- **nvim-surround** — surround text
- **neoscroll** — smooth scrolling

## Setup on a new machine

```bash
git clone https://github.com/jacobespersen/neovim-config.git ~/.config/nvim
nvim
```

lazy.nvim auto-installs all plugins on first launch. Then:

```vim
:Mason          " install LSP servers
:Copilot auth   " if using Copilot
```
