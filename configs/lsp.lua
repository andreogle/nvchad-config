local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "cssls", "elixirls", "html", "rust_analyzer", "tailwindcss", "tsserver" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Elixir
lspconfig.elixirls.setup {
  cmd = { "/home/andre/Development/elixir-ls/scripts/language_server.sh" }
}

-- Rust
lspconfig.rust_analyzer.setup({
  on_attach = function(client, bufnr)
      vim.lsp.inlay_hint.enable(bufnr)
  end,

  settings = {
    ["rust-analyzer"] = {
      imports = {
        granularity = { group = "module" },
        prefix = "self",
      },
      cargo = {
        buildScripts = { enable = true },
      },
      procMacro = { enable = true },
    }
  }
})

-- Tailwind CSS
lspconfig.tailwindcss.setup {
  filetypes = { "astro", "html", "html-eex", "heex", "markdown", "css", "less", "postcss", "sass", "scss", "reason", "vue", "svelte" }
}
