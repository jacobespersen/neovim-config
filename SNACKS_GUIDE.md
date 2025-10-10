# Snacks.nvim Features Guide

Welcome back to Vim! Here's everything Snacks adds to your setup:

## 🎨 Visual Enhancements

### Smooth Scrolling
**Always on** - Scroll through code with smooth animations instead of jumps. Try holding `Ctrl+d` or `Ctrl+u` to see the difference!

### Indent Guides
**Always on** - Beautiful animated indent lines that highlight the current scope. Look at the left side when editing nested code.

### Dim Inactive Code
**Always on** - Code outside your current scope gets slightly dimmed. Great for focusing on what matters.

### Status Column
**Always on** - Enhanced line numbers area with better git signs and fold indicators.

### Dashboard
**Startup screen** - Open nvim without a file to see the beautiful dashboard with quick actions.

## 🛠️ Productivity Boosters

### Buffer Management
```
<Space>bd  - Delete current buffer (window stays open!)
<Space>bo  - Delete all other buffers (clean up your workspace)
```

**Why it's awesome**: Normal `:bd` breaks your window layout. Snacks preserves it!

### Word Highlighting
**Always on** - When your cursor is on a word, all instances are automatically highlighted. Great for seeing variable usage.

### Zen Mode
```
<Space>z  - Enter Zen Mode (hide everything, just code)
<Space>Z  - Zoom current window (maximize temporarily)
```

**Use case**: Writing code without distractions, focusing on one function.

### Scratch Buffer
```
<Space>.  - Quick scratch buffer for notes
<Space>S  - Select from multiple scratch buffers
```

**Use case**: Taking quick notes, testing code snippets, TODO lists. It's persistent!

## 🔧 Git Integration

### Git Browse
```
<Space>gb  - Open current file/line in browser
```

**Example**: Cursor on line 42 in main.py → Opens GitHub at that exact line! Works with:
- GitHub
- GitLab
- Bitbucket
- Custom git hosts

### LazyGit Integration
```
<Space>gg  - Open LazyGit (full git UI)
<Space>gl  - Git log
<Space>gf  - Current file history
```

**What's LazyGit?** A beautiful terminal UI for Git. Install with:
```bash
brew install lazygit
```

Then use `<Space>gg` for a full git interface inside Neovim!

## 🔔 Notifications

### Beautiful Notifications
**Always on** - All vim messages appear as pretty notifications in the corner.

```
<Space>nh  - Show notification history
<Space>nd  - Dismiss all notifications
```

**Example**: LSP attaches? Pretty notification. File saved? Nice message.

## 🚀 Terminal

### Quick Terminal
```
Ctrl+/  - Toggle floating terminal
```

**Different from Claude Code**: This is for quick shell commands. Claude Code (`<Space>ac`) is for AI chat.

## ⚡ Performance Features (Always On)

### Big File Handling
Automatically detects files over 1MB and:
- Disables Treesitter
- Disables LSP
- Keeps Neovim fast

### Quickfile
Files load instantly - plugins load after file is visible. You'll notice Neovim feels snappier!

## 💡 Cool Tricks to Try

### 1. Zen Mode for Writing
```vim
:e README.md
<Space>z    " Enter zen mode
" Write distraction-free!
<Space>z    " Exit zen mode
```

### 2. Quick Git Browse
```vim
" In any project file
<Space>gb   " Opens in browser at exact line
```

### 3. Scratch Buffer for TODO
```vim
<Space>.    " Opens scratch
" Type your TODOs
<Space>.    " Close it
" Next day:
<Space>.    " Your TODOs are still there!
```

### 4. Buffer Cleanup
```vim
" You have 10 buffers open, want to keep current
<Space>bo   " Closes all others, window layout stays!
```

### 5. LazyGit Workflow (if installed)
```vim
<Space>gg   " Open LazyGit
" Stage files, commit, push - all visual
q           " Back to code
```

### 6. Word Under Cursor
```vim
" Put cursor on a variable name
" Wait 100ms
" All instances highlight automatically!
```

## 🎯 Workflow Recommendations

### Morning Routine
1. Open Neovim → See dashboard with recent files
2. `<Space>o` → Find your file
3. Start coding with all the visual enhancements

### Coding Session
1. Work on code (smooth scroll, indent guides, word highlight)
2. Need focus? `<Space>z` for zen mode
3. Quick note? `<Space>.` for scratch
4. Git browse? `<Space>gb` to see context

### Git Workflow
1. Make changes
2. `<Space>gg` → LazyGit interface
3. Stage, commit, push visually
4. Back to coding

### Cleanup Time
1. `<Space>bo` → Close all other buffers
2. `<Space>nd` → Dismiss old notifications
3. Clean workspace!

## 🔍 Debugging Performance

If something feels slow:
```vim
<Space>ps   " Open profiler
```

This helps identify slow plugins or configurations.

## 📚 Learning More

All features are documented:
```vim
:help snacks.nvim
```

Or check specific modules:
```vim
:help snacks-zen
:help snacks-scratch
:help snacks-git
```

## 🎉 What's New for You

Since you've been away from Vim, here's what's revolutionary:

1. **Native LSP** - No more YouCompleteMe setup hell!
2. **Treesitter** - Syntax highlighting is FAST and accurate
3. **Lua plugins** - Everything is faster than old Vimscript
4. **Smooth animations** - Neovim feels modern now
5. **Better notifications** - No more ugly message area
6. **Easy plugin management** - lazy.nvim installs everything automatically
7. **Git integration** - Browse GitHub without leaving editor
8. **Zen mode** - Focus mode built-in
9. **Smart features** - Word highlighting, dim, auto-optimization

Welcome back! Neovim has evolved into something truly special. 🚀
