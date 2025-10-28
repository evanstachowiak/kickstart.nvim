return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require('tokyonight').setup {
      on_highlights = function(hl, colors)
        -- hl.IncSearch = { bg = colors.bg_dark, fg = colors.black }
        hl.IncSearch = {
          -- bg = colors.blue,
          fg = colors.blue,
        }
        -- hl.Search = {
        --   bg = colors.blue,
        --   fg = colors.bg_dark,
        -- }
        -- hl.LineNr = {
        --   fg = colors.cyan,
        -- }
        hl.CursorLineNr = {
          fg = colors.cyan,
        }
      end,
    }
    vim.cmd 'colorscheme tokyonight-night'
  end,
}

-- return {
--   'rebelot/kanagawa.nvim',
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function()
--     -- vim.cmd 'colorscheme kanagawa-wave'
--     vim.cmd 'colorscheme kanagawa-dragon'
--     -- vim.cmd 'colorscheme kanagawa-lotus'
--   end,
-- }

-- return {
--   'nickkadutskyi/jb.nvim',
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function()
--     -- require("jb").setup({transparent = true})
--     vim.cmd 'colorscheme jb'
--   end,
--
-- }
-- return {
--   'Tsuzat/NeoSolarized.nvim',
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     vim.cmd [[ colorscheme NeoSolarized ]]
--   end,
-- }
