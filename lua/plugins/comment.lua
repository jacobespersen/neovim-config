-- Comment.nvim: Better commenting (replaces nerdcommenter)
return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup()
  end,
}
