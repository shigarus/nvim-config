local a = 'sdafasd'
print(a)
return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    'hide',
    oldfiles = {
      include_current_session = true,
    },
    previewers = {
      builtin = {
        syntax_limit_b = 1024 * 100, -- 100KB
      },
    },
  },
  keys = {
    {
      '<leader>sf',
      function()
        require('fzf-lua').files { hidden = true, find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' } }
      end,
      '[S]earch [F]iles',
    },
    {
      '<leader>sg',
      function()
        require('fzf-lua').live_grep_glob()
      end,
      '[S]earch [G]rep',
    },
    {
      '<leader>sr',
      function()
        require('fzf-lua').resume()
      end,
      '[S]earch [R]esume',
    },
    {
      '<leader>s.',
      function()
        require('fzf-lua').oldfiles()
      end,
      '[S]earch old files [.]',
    },
    {
      '<leader>/',
      function()
        require('fzf-lua').blines()
      end,
      'Search current buffer [/]',
    },
    {
      '<leader><leader>',
      function()
        require('fzf-lua').buffers()
      end,
      'Search old files [ ]',
    },
    {
      '<leader>sd',
      function()
        require('fzf-lua').diagnostics_document()
      end,
      '[S]earch [D]iagnostics in the document',
    },
    {
      '<leader>ss',
      function()
        require('fzf-lua').lsp_document_symbols()
      end,
      '[S]earch lsp document [S]ymbols',
    },
    {
      '<leader>sw',
      function()
        require('fzf-lua').grep_cword()
      end,
      '[S]earch [w]ord',
    },
    {
      '<leader>sW',
      function()
        require('fzf-lua').grep_cWORD()
      end,
      '[S]earch [W]ORD',
    },
    {
      '<leader>sc',
      function()
        require('fzf-lua').files { cwd = '~/.config' }
      end,
      '[S]earch [C]onfig files',
    },
    {
      '<leader>sk',
      function()
        require('fzf-lua').keymaps()
      end,
      '[S]earch [K]eymaps',
    },
    {
      '<leader>sh',
      function()
        require('fzf-lua').helptags()
      end,
      '[S]earch [H]elp',
    },
    {
      '<leader>su',
      function()
        require('fzf-lua').builtin()
      end,
      '[S]earch [U]niversal',
    },
  },
}
