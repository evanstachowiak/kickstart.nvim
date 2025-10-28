-- local util = require 'neotest-jest.util'
-- local jest_util = require 'neotest-jest.jest-util'
--
return {
  'nvim-neotest/neotest',
  -- see if the issue with neotest is fixed
  version = '5.9',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-jest',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-jest' {
          jestCommand = 'npm test --',
          -- jestConfigFile = 'jest.config.ts',
          -- jest_test_discovery = true,
          -- jest_test_discovery = false,
          -- discover_files = function(path)
          --   return vim.fn.globpath(path, '**/*.unit.test.ts', false, true)
          -- end,
          -- cwd = function(path)
          --   return vim.fn.getcwd()
          -- end,
        },
      },
      log_level = vim.log.levels.DEBUG,
    }
  end,
}
