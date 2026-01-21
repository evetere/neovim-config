return {
  "hrsh7th/cmp-nvim-lsp",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
     "neovim/nvim-lspconfig",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/lazydev.nvim", opts = {} },
  },
  config = function()

    local lspconfig = require("lspconfig")

    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    vim.lsp.config("*", {
      capabilities = capabilities,
    })

    lspconfig.clangd.setup {
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    }

  end,
}

