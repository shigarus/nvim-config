return function()
  local map = function(keys, func, desc, mode)
    mode = mode or 'n'
    vim.keymap.set(mode, keys, func, { desc = desc })
  end
  map('<leader>w', ':w<CR>', '[w]rite current buffer')
end
