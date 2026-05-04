return {
'marko-cerovac/material.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require('material.functions').change_style("palenight")
  end,
}
