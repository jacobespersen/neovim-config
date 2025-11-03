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
        -- Disable server mode to avoid connection issues
        null_ls.builtins.diagnostics.rubocop.with({
          extra_args = { "--no-server" }
        }),
        null_ls.builtins.formatting.rubocop.with({
          extra_args = { "--no-server" }
        }),
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

