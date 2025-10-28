return {
  'axkirillov/unified.nvim',
  config = function()
    require('unified').setup {}
    vim.keymap.set('n', ']h', function()
      require('unified.navigation').next_hunk()
    end, { desc = 'Next hunk' })
    vim.keymap.set('n', '[h', function()
      require('unified.navigation').previous_hunk()
    end, { desc = 'Previous hunk' })
  end,
}
