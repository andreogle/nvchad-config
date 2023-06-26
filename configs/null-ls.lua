local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.markdownlint,
  formatting.mix,
  formatting.prettier,
  formatting.stylua,

  lint.credo,
  lint.eslint,
  lint.markdownlint,
  lint.shellcheck,
  lint.tsc
}

null_ls.setup {
   sources = sources,
}
