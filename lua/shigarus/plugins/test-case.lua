return {
  'johmsalas/text-case.nvim',
  config = function()
    require('textcase').setup {}
  end,
  keys = {
    'ga', -- Default invocation prefix
    { 'gau', "<cmd>lua require('textcase').current_word('to_upper_case')<CR>", mode = { 'n', 'x' } },
    { 'gaU', "<cmd>lua require('textcase').lsp_rename('to_upper_case')<CR>", mode = { 'n', 'x' } },
    { 'gal', "<cmd>lua require('textcase').current_word('to_lower_case')<CR>", mode = { 'n', 'x' } },
    { 'gaL', "<cmd>lua require('textcase').lsp_rename('to_lower_case')<CR>", mode = { 'n', 'x' } },
    { 'gas', "<cmd>lua require('textcase').current_word('to_snake_case')<CR>", mode = { 'n', 'x' } },
    { 'gaS', "<cmd>lua require('textcase').lsp_rename('to_snake_case')<CR>", mode = { 'n', 'x' } },
    { 'gap', "<cmd>lua require('textcase').current_word('to_pascal_case')<CR>", mode = { 'n', 'x' } },
    { 'gaP', "<cmd>lua require('textcase').lsp_rename('to_pascal_case')<CR>", mode = { 'n', 'x' } },
  },
}
