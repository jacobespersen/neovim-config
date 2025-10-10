-- Claude Code: AI coding assistant with split pane support
return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" },
  config = function()
    require("claudecode").setup({
      -- Terminal configuration
      terminal = {
        split_side = "right",  -- Claude Code appears on the right
        size = 0.4,            -- 40% of screen width
      },
      -- Use git repo root as working directory
      git_repo_cwd = true,
    })
  end,
  keys = {
    { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
    { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude Code" },
    { "<leader>ax", "<cmd>ClaudeCodeClose<cr>", desc = "Close Claude Code" },
  },
}
