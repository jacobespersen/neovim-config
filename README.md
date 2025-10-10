# Modern Neovim Configuration (2025)

## Overview
This is a modern, modular Neovim configuration built with lazy.nvim, featuring:
- **Claude Code integration** for AI-assisted coding
- **Native LSP** with mason.nvim for language support
- **Treesitter** for superior syntax highlighting
- **Telescope** for fuzzy finding
- **All your original keybindings preserved**

## Structure
```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── config/
│   │   ├── options.lua      # Vim options
│   │   └── keymaps.lua      # Keybindings
│   └── plugins/
│       ├── claudecode.lua   # Claude Code AI
│       ├── lsp.lua          # LSP configuration
│       ├── cmp.lua          # Completion
│       ├── treesitter.lua   # Syntax highlighting
│       ├── telescope.lua    # Fuzzy finder
│       ├── nvim-tree.lua    # File explorer
│       ├── lualine.lua      # Status line
│       ├── copilot.lua      # GitHub Copilot
│       ├── comment.lua      # Commenting
│       ├── autopairs.lua    # Auto pairs
│       ├── surround.lua     # Surround text
│       └── colorscheme.lua  # Solarized theme
├── KEYBINDINGS.md          # Keybindings reference
└── README.md               # This file
```

## First Time Setup

1. **Open Neovim:**
   ```bash
   nvim
   ```

2. **Wait for plugins to install** (lazy.nvim will auto-install everything)

3. **Install LSP servers:**
   ```vim
   :Mason
   ```
   Then install additional servers as needed (Python, JS, etc. are auto-installed)

4. **Install Treesitter parsers:**
   ```vim
   :TSInstall <language>
   ```
   Or let it auto-install when you open files

5. **Copilot setup** (if using):
   ```vim
   :Copilot auth
   ```

## Claude Code Usage

### Basic Workflow
1. Open your code: `nvim myfile.py`
2. Toggle Claude Code: `<Space>ac`
3. Code appears on left, Claude Code terminal on right
4. Ask questions or send code to Claude

### Sending Code to Claude
1. Select code in visual mode
2. Press `<Space>as`
3. Claude receives the code with context

### Approving Changes
- Claude Code will show diffs natively
- You can approve/decline changes interactively
- Uses Neovim's native diff support

## Plugin Replacements (from old .vimrc)

| Old Plugin | New Plugin | Purpose |
|------------|------------|---------|
| YouCompleteMe | nvim-cmp + LSP | Completion |
| completor.vim | nvim-cmp | Completion |
| syntastic | LSP diagnostics | Syntax checking |
| python-mode | LSP (pyright) | Python IDE features |
| ctrlp.vim | Telescope | Fuzzy finder |
| command-t | Telescope | File finder |
| ag.vim | Telescope | Text search |
| NERDTree | nvim-tree.lua | File explorer |
| vim-airline | lualine.nvim | Status line |
| nerdcommenter | Comment.nvim | Commenting |
| auto-pairs | nvim-autopairs | Auto pairs |
| vim-surround | nvim-surround | Surround text |
| vim-javascript-syntax | Treesitter | JS syntax |
| vim-colors-solarized | solarized.nvim | Colorscheme |
| copilot.vim | copilot.lua | AI assistance |

## Adding Language Support

### Install LSP Server
```vim
:Mason
" Search for your language server and install
```

### Install Treesitter Parser
```vim
:TSInstall <language>
```

Example for Go:
```vim
:Mason  " Install gopls
:TSInstall go
```

## Customization

### Add More Plugins
Create a new file in `~/.config/nvim/lua/plugins/`:
```lua
-- ~/.config/nvim/lua/plugins/myplugin.lua
return {
  "author/plugin-name",
  config = function()
    -- configuration here
  end,
}
```

### Modify Keybindings
Edit `~/.config/nvim/lua/config/keymaps.lua`

### Change Options
Edit `~/.config/nvim/lua/config/options.lua`

## Troubleshooting

### Plugins not loading
```vim
:Lazy sync
```

### LSP not working
```vim
:LspInfo
:Mason
```

### Treesitter issues
```vim
:TSUpdate
```

### Clear cache and restart
```bash
rm -rf ~/.local/share/nvim
nvim
```

## Terminal Emulator Recommendations

For best experience, use a modern terminal:
- **Kitty** - Feature-rich, GPU-accelerated
- **WezTerm** - Lua-configurable
- **Ghostty** - New, fast, modern

All support:
- True color (24-bit)
- Ligatures
- GPU acceleration
- Great font rendering

## Key Files to Remember

- **Old config:** `~/.vimrc` (still exists, not used by this setup)
- **New config:** `~/.config/nvim/init.lua`
- **Quick reference:** `~/.config/nvim/KEYBINDINGS.md`

## Resources

- [Neovim Docs](https://neovim.io/doc/)
- [Claude Code Docs](https://docs.claude.com/en/docs/claude-code)
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [Mason.nvim](https://github.com/williamboman/mason.nvim)

---

**Note:** Your old `.vimrc` and `.vim/` directory are untouched. This is a completely separate configuration. You can always switch back by deleting `~/.config/nvim/`.
