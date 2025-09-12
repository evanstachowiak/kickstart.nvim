return {
  'pmizio/typescript-tools.nvim',
  lazy = false,
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig', { 'saghen/blink.cmp', lazy = false, priority = 1000 } },
  ft = { 'typescript', 'javascript' },
  opts = {
    settings = {
      expose_as_code_action = 'all',
      tsserver_file_preferences = {
        includeInlayParameterNameHints = 'all',
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
}
