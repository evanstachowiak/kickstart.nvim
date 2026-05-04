return {
   'folke/tokyonight.nvim',
   lazy = false,
   priority = 1000,
   opts = {},
   config = function()
     require('tokyonight').setup {
       -- on_highlights = function(hl, colors)
       --   -- hl.IncSearch = { bg = colors.bg_dark, fg = colors.black }
       --   hl.IncSearch = {
       --     -- bg = colors.blue,
       --     fg = colors.blue,
       --   }
       --   -- hl.Search = {
       --   --   bg = colors.blue,
       --   --   fg = colors.bg_dark,
       --   -- }
       --   -- hl.LineNr = {
       --   --   fg = colors.cyan,
       --   -- }
       --   hl.CursorLineNr = {
       --     fg = colors.cyan,
       --   }
       -- end,
     }
     vim.cmd 'colorscheme tokyonight-night'
   end,
 }
