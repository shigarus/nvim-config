return function()
  local map = function(keys, func, desc, mode)
    mode = mode or 'n'
    vim.keymap.set(mode, keys, func, { desc = desc })
  end
  map('<leader>w', ':w<CR>', '[w]rite current buffer')
  map('<leader>q', ':q<CR>', '[q]uit')
  vim.keymap.set('n', '<leader>fb', function()
    vim.diagnostic.open_float()
  end, { desc = 'Open error as float buffer' })
  vim.keymap.set('n', '<leader>fl', function()
    local to_set
    if type(vim.diagnostic.config().virtual_lines) == 'table' then
      to_set = false
    else
      to_set = { current_line = true }
    end
    vim.diagnostic.config { virtual_lines = to_set }
  end, { desc = 'Toggle tooltips on separate line' })

  function insertFullPath()
    local filepath = vim.fn.expand '%'
    vim.fn.setreg('+', filepath)
  end
  vim.keymap.set('n', '<leader>pc', insertFullPath, { noremap = true, silent = true })
end
