local plugins = {
  { "Pocco81/auto-save.nvim", lazy = false },

  { "David-Kunz/gen.nvim", lazy = false },

  {
    "neovim/nvim-lspconfig",
     dependencies = {
       "jose-elias-alvarez/null-ls.nvim",
       config = function()
         require "custom.configs.null-ls"
       end,
     },
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lsp"
     end,
  },
}

return plugins
