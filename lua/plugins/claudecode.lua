-- Claude Code: open claude in a regular vsplit via snacks terminal
-- No plugin needed — just a keybinding that opens a terminal with `claude`

local claude_buf = nil

local function is_claude_visible()
  if not claude_buf or not vim.api.nvim_buf_is_valid(claude_buf) then
    claude_buf = nil
    return false, nil
  end
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if vim.api.nvim_win_get_buf(win) == claude_buf then
      return true, win
    end
  end
  return false, nil
end

local function toggle_claude()
  local visible, win = is_claude_visible()

  if visible and win then
    -- Claude is visible — hide it and equalize
    vim.api.nvim_win_close(win, false)
    vim.cmd("wincmd =")
    return
  end

  if claude_buf and vim.api.nvim_buf_is_valid(claude_buf) then
    -- Buffer exists but hidden — show it in a new split
    vim.cmd("vsplit")
    vim.api.nvim_win_set_buf(0, claude_buf)
    vim.cmd("wincmd =")
    vim.cmd("startinsert")
    return
  end

  -- No claude terminal exists — create one
  vim.cmd("vsplit")
  vim.cmd("enew")
  vim.fn.termopen("claude", {
    on_exit = function()
      vim.schedule(function()
        claude_buf = nil
      end)
    end,
  })
  claude_buf = vim.api.nvim_get_current_buf()
  vim.cmd("wincmd =")
  vim.cmd("startinsert")
end

return {
  -- Keep snacks as the dependency since you use it elsewhere
  -- This just adds the claude keybinding
  "folke/snacks.nvim",
  keys = {
    { "<leader>ac", toggle_claude, desc = "Toggle Claude Code" },
  },
}
