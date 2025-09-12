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
return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd 'colorscheme tokyonight-night'
  end,
}
