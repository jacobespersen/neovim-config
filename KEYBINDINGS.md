# Neovim Keybindings Reference

## Leader Key
`<Space>` is your leader key

## Navigation (Custom Layout)
- `j` = Move left (h)
- `k` = Move down (j)
- `l` = Move up (k)
- `;` = Move right (l)

## Window Management
- `<C-j>` = Move to left window
- `<C-k>` = Move to bottom window
- `<C-l>` = Move to top window
- `<C-\>` = Move to right window

## Tab Navigation
- `<C-h>` = Previous tab
- `<C-;>` = Next tab

## File Operations
- `<C-s>` = Save (works in insert and normal mode)
- `<C-q>` = Quit
- `kl` (in insert mode) = Escape to normal mode

## File Explorer (nvim-tree)
- `<C-n>` = Toggle file explorer
- In nvim-tree:
  - `a` = Create new file
  - `d` = Delete file
  - `r` = Rename file
  - `x` = Cut file
  - `c` = Copy file
  - `p` = Paste file

## Fuzzy Finding (Telescope)
- `<leader>o` = Find files
- `<leader>O` = Find files (including ignored)
- `<leader>m` = Find buffers
- `<leader>fg` = Live grep
- `<leader>fh` = Help tags

## Claude Code
- `<leader>ac` = Toggle Claude Code terminal (right split)
- `<leader>as` = Send visual selection to Claude Code
- In Claude terminal: `<Esc>` to exit terminal mode

## LSP (Code Intelligence)
- `gd` = Go to definition
- `K` = Hover documentation
- `gi` = Go to implementation
- `gr` = Show references
- `<leader>rn` = Rename symbol
- `<leader>ca` = Code actions
- `<leader>e` = Show diagnostic in float
- `[d` = Previous diagnostic
- `]d` = Next diagnostic

## Completion (nvim-cmp)
- `<Tab>` = Next completion item
- `<S-Tab>` = Previous completion item
- `<CR>` = Confirm selection
- `<C-Space>` = Trigger completion
- `<C-e>` = Close completion menu

## Copilot
- `<Tab>` = Accept suggestion (if visible)
- `<M-]>` = Next suggestion
- `<M-[>` = Previous suggestion
- `<C-]>` = Dismiss suggestion

## Clipboard Operations
- `<leader>y` = Copy to system clipboard (visual mode)
- `<leader>d` = Cut to system clipboard (visual mode)
- `<leader>p` = Paste from system clipboard (normal mode)
- `<leader>P` = Paste before cursor (normal mode)

## Commenting (Comment.nvim)
- `gcc` = Toggle line comment
- `gbc` = Toggle block comment
- In visual mode:
  - `gc` = Toggle line comment
  - `gb` = Toggle block comment

## Surround (nvim-surround)
- `ys{motion}{char}` = Add surround
- `ds{char}` = Delete surround
- `cs{old}{new}` = Change surround
- Visual mode: `S{char}` = Surround selection

## Spell Check
- `<leader>f` = Fix spelling (first suggestion)

## Terminal Mode
- `<Esc>` = Exit terminal mode to normal mode
- `<C-/>` = Toggle floating terminal (snacks)

## Snacks.nvim Features

### Buffer Management
- `<leader>bd` = Delete buffer (preserves layout)
- `<leader>bo` = Delete other buffers

### Git Integration
- `<leader>gb` = Open file/line in browser (GitHub/GitLab)
- `<leader>gg` = Open LazyGit
- `<leader>gl` = LazyGit log
- `<leader>gf` = LazyGit current file history

### Focus & Productivity
- `<leader>z` = Toggle Zen Mode (distraction-free)
- `<leader>Z` = Toggle Zoom (focus on current window)
- `<leader>.` = Toggle scratch buffer (quick notes)
- `<leader>S` = Select scratch buffer

### Notifications
- `<leader>nh` = Show notification history
- `<leader>nd` = Dismiss all notifications

### Other Snacks Features (Auto-enabled)
- **Smooth scrolling** - Enabled automatically
- **Indent guides** - Animated scope highlighting
- **Word highlighting** - Auto-highlight word under cursor
- **Dim** - Dims inactive code for focus
- **Dashboard** - Beautiful startup screen
- **Big file handling** - Auto-optimizes large files
