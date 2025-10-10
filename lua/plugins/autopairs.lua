-- nvim-autopairs: Auto close brackets (replaces auto-pairs)
return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({
      check_ts = true,  -- Treesitter integration
    })
  end,
}
