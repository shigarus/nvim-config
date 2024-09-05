return {
  'loctvl842/monokai-pro.nvim',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'monokai-pro'
  end,
  config = function()
    require('monokai-pro').setup {}
  end,
}
