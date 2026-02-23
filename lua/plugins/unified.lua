return {
  'axkirillov/unified.nvim',
  config = function()
    local actions = require 'unified.hunk_actions'
    require('unified').setup {}
    vim.keymap.set('n', ']h', function()
      require('unified.navigation').next_hunk()
    end, { desc = 'Next hunk' })
    vim.keymap.set('n', '[h', function()
      require('unified.navigation').previous_hunk()
    end, { desc = 'Previous hunk' })
    vim.keymap.set('n', '<leader>us', function()
      require('unified.file_tree').show 'HEAD'
      -- vim.cmd 'to vsplit'
    end, { desc = 'Open unified file tree' })
    vim.keymap.set('n', '<leader>ud', function()
      require('unified').toggle()
    end, { desc = 'Toggle unified diff' })
    vim.keymap.set('n', 'gs', function()
      actions.stage_hunk()
    end, { desc = 'Unified: Stage hunk' })
    vim.keymap.set('n', 'gu', function()
      actions.unstage_hunk()
    end, { desc = 'Unified: Unstage hunk' })
    vim.keymap.set('n', 'gr', function()
      actions.revert_hunk()
    end, { desc = 'Unified: Revert hunk' })
  end,
}
