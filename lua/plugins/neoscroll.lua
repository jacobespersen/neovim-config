-- neoscroll: Smooth scrolling
return {
  "karb94/neoscroll.nvim",
  config = function()
    require("neoscroll").setup({
      -- Default easing function
      easing_function = "quadratic",
      -- Hide cursor while scrolling
      hide_cursor = true,
      -- Stop scrolling when cursor reaches buffer edge
      stop_eof = true,
      -- Use local scope for scroll options
      respect_scrolloff = false,
      -- Throttle/timeout settings
      cursor_scrolls_alone = true,
    })

    -- Key mappings for smooth scrolling
    local neoscroll = require("neoscroll")
    local keymap = {
      ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 250 }) end,
      ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 250 }) end,
      ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 450 }) end,
      -- ["<C-f>"] removed - used for nvim-tree find file instead
      ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 }) end,
      ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor = false, duration = 100 }) end,
      ["zt"] = function() neoscroll.zt({ half_win_duration = 250 }) end,
      ["zz"] = function() neoscroll.zz({ half_win_duration = 250 }) end,
      ["zb"] = function() neoscroll.zb({ half_win_duration = 250 }) end,
    }

    local modes = { "n", "v", "x" }
    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func)
    end
  end,
}
