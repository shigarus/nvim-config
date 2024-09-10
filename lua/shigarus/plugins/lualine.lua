-- local custom_monokai = require 'lualine.themes.monokai'
-- custom_monokai.normal.c.bg = '#272822'
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = { theme = 'monokai' },
  -- config = function()
  --   local monokai = require 'nvim-lualine/lualine.themes.monokai'
  --   monokai.normal.c.bg = '#972822'
  --   require('lualine').setup {
  --     options = { theme = monokai },
  --   }
  -- end,
}
