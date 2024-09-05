-- local custom_monokai = require 'lualine.themes.monokai'
-- custom_monokai.normal.c.bg = '#272822'
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    theme = 'monokai',
  },
}
