local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "cssls", "elixirls", "html", "tailwindcss", "tsserver" }

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

lspconfig.tailwindcss.setup {
  filetypes = { "astro", "html", "html-eex", "heex", "markdown", "css", "less", "postcss", "sass", "scss", "javascriptreact", "reason", "typescriptreact", "vue", "svelte" }
}
