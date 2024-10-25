return {
  'ggandor/leap.nvim',
  config = function()
    local leap = require 'leap'
    vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)')
    vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)')
    vim.keymap.set({ 'n', 'x', 'o' }, 'gs', '<Plug>(leap-from-window)')
    leap.opts.case_sensetive = true
  end,
}
