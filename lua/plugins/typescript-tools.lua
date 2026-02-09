return {
  'pmizio/typescript-tools.nvim',
  lazy = false,
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig', { 'saghen/blink.cmp', lazy = false, priority = 1000 } },
  ft = { 'typescript', 'javascript' },
  opts = {
    settings = {
      expose_as_code_action = 'all',
      tsserver_file_preferences = {
        includeInlayHint = true,
        includeInlayParameterNameHints = 'all', -- 'none' | 'literals' | 'all'
        includeInlayParameterNameHintsWhenArgumentMatchesName = true,
        includeInlayVariableTypeHints = true,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHintsWhenTypeMatchesName = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
        includeCompletionsForModuleExports = true,
        quotePreference = 'auto',
        allowImportingTsExtensions = true,
      },
      tsserver_format_options = {
        allowIncompleteCompletions = false,
        allowRenameOfImportPath = true,
      },
    },
  },
  keys = {

    {
      '<leader>gdv',
      function()
        vim.cmd 'vsplit'
        local api = require 'typescript-tools.api'
        api.go_to_source_definition(true)
      end,
      desc = 'Go To Source Definition in Vertical Split',
    },
  },
}
