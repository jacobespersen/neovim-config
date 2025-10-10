-- none-ls: Use Mason-installed linters/formatters
return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local null_ls = require("null-ls")
    
    null_ls.setup({
      sources = {
        -- Rubocop (installed via Mason)
        null_ls.builtins.diagnostics.rubocop,  -- Shows errors/warnings
        null_ls.builtins.formatting.rubocop,   -- Formats code
      },
    })
    
    -- Optional: Format on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.rb",
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end,
}

