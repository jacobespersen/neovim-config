# Neovim Keybindings Reference

**Leader Key:** `<Space>`

---

## 🔥 Most Essential (Daily Use)

### File Operations
- `<C-s>` - Save file (insert and normal mode)
- `<C-q>` - Quit window/buffer
- `<C-n>` - Toggle file explorer (nvim-tree)
- `kl` - Escape to normal mode (from insert mode)

### Navigation (Custom Layout)
- `j` - Move left (replaces h)
- `k` - Move down (replaces j)
- `l` - Move up (replaces k)
- `;` - Move right (replaces l)

### File Finding (Snacks Picker)
- `<leader>o` - Find files
- `<leader>O` - Find files (including hidden/ignored)
- `<leader>m` - Find open buffers
- `<leader>fg` - Live grep (search in all files)
- `<leader>fw` - Grep word under cursor
- `<leader>fh` - Search help tags

### Copilot (AI Suggestions)
- `<Tab>` - Accept AI suggestion (when visible)
- `<M-]>` - Next suggestion (Alt/Option + ])
- `<M-[>` - Previous suggestion (Alt/Option + [)
- `<C-]>` - Dismiss suggestion

---

## 💻 Code Intelligence (LSP)

### Navigation
- `gd` - Go to definition
- `gr` - Show all references
- `gi` - Go to implementation
- `K` - Show hover documentation

### Actions
- `<leader>ca` - Code actions (fixes/refactors)
- `<leader>e` - Show diagnostic details (errors/warnings)
- `[d` - Previous diagnostic
- `]d` - Next diagnostic

---

## 🤖 AI Assistant (Claude Code)
- `<leader>ac` - Toggle Claude Code terminal
- `<leader>as` - Send selection to Claude (visual mode)
- `<leader>ax` - Close Claude Code
- `<Esc>` - Exit terminal insert mode (in terminal)
- `<C-h>` - Jump from terminal back to code (in terminal)

---

## 🪟 Window & Tab Management

### Window Navigation
- `<C-j>` - Move to left window
- `<C-k>` - Move to bottom window
- `<C-l>` - Move to top window
- `<C-\>` - Move to right window

### Tab Navigation
- `<C-h>` - Previous tab
- `<C-;>` - Move to pane on the right

### Buffer Management
- `<leader>bd` - Delete buffer (preserves window layout)
- `<leader>bo` - Delete all other buffers

---

## ✂️ Text Editing

### Clipboard Operations
- `<leader>y` - Copy to system clipboard (visual mode)
- `<leader>d` - Cut to system clipboard (visual mode)
- `<leader>p` - Paste from system clipboard
- `<leader>P` - Paste before cursor

### Commenting (Comment.nvim)
- `gcc` - Toggle line comment
- `gbc` - Toggle block comment
- `gc` - Toggle comment on selection (visual mode)
- `gb` - Toggle block comment on selection (visual mode)

### Surround Text (nvim-surround)
- `ys{motion}{char}` - Add surround (e.g., `ysiw"` surrounds word with quotes)
- `ds{char}` - Delete surround (e.g., `ds"` removes quotes)
- `cs{old}{new}` - Change surround (e.g., `cs"'` changes " to ')
- `S{char}` - Surround selection (visual mode)

### Spell Check
- `<leader>f` - Fix spelling with first suggestion

---

## 🎨 Focus & Productivity (Snacks)

### Focus Modes
- `<leader>z` - Toggle Zen Mode (distraction-free coding)
- `<leader>Z` - Toggle Zoom (maximize current window)
- `<leader>.` - Toggle scratch buffer (quick notes)
- `<leader>S` - Select scratch buffer

### Notifications
- `<leader>nh` - Show notification history
- `<leader>nd` - Dismiss all notifications

---

## 🔧 Git Integration (Snacks + LazyGit)
- `<leader>gb` - Open file/line in browser (GitHub/GitLab)
- `<leader>gg` - Open LazyGit
- `<leader>gl` - LazyGit log
- `<leader>gf` - LazyGit current file history

---

## 🛠️ File Explorer (nvim-tree)

When in nvim-tree:
- `<CR>` or `o` - Open file/folder
- `a` - Create new file/folder
- `d` - Delete file/folder
- `r` - Rename file/folder
- `x` - Cut file
- `c` - Copy file
- `p` - Paste file
- `R` - Refresh tree
- `H` - Toggle hidden files
- `q` - Close tree

---

## 🖥️ Terminal
- `<C-/>` - Toggle floating terminal
- `<Esc>` - Exit terminal insert mode
- `<C-q>` - Close terminal window

---

## 🔍 Advanced Features

### File Operations
- `<leader>rf` - Rename file (with file system operations)

### Debug/Profiling
- `<leader>ps` - Open profiler scratch buffer

---

## ✨ Auto-Enabled Features (No Keybinds)

These Snacks features work automatically:
- **Smooth scrolling** - Nicer visual scrolling experience
- **Indent guides** - Animated scope highlighting
- **Word highlighting** - Auto-highlight word under cursor
- **Dim inactive code** - Helps focus on active code
- **Dashboard** - Beautiful startup screen
- **Big file handling** - Auto-optimizes files >1MB
- **LSP notifications** - Notifies when language servers attach

---

## 📝 Tips

1. **Auto-paste positioning**: After paste/yank, cursor jumps to end automatically
2. **Ruby formatting**: Files auto-format with Rubocop on save
3. **LSP diagnostics**: Errors/warnings show as virtual text in your code
4. **Custom navigation**: Remember j/k/l/; instead of h/j/k/l!
5. **Multiple modes**: Many `<leader>` commands work in both normal and visual mode

---

## 🚀 Quick Reference by Category

**Files:** `<leader>o` `<leader>m` `<C-n>` `<C-s>`  
**Code:** `gd` `gr` `K` `<leader>ca`  
**AI:** `<Tab>` (Copilot) `<leader>ac` (Claude)  
**Edit:** `gcc` `ys` `<leader>y` `<leader>p`  
**Focus:** `<leader>z` `<leader>.`  
**Git:** `<leader>gg` `<leader>gb`  
**Windows:** `<C-j/k/l/\>` `<C-h/;>` (tabs)
