-- local custom_monokai = require 'lualine.themes.monokai'
-- custom_monokai.normal.c.bg = '#272822'

Tmux_session_name = ''
local function update_tmux_session_name()
  local f = assert(io.popen "tmux display-message -p '#S'")
  Tmux_session_name = f:read()
end

local function contiuous_upd()
  update_tmux_session_name()
  vim.defer_fn(contiuous_upd, 1000)
end

vim.defer_fn(contiuous_upd, 0)

return {
  'nvim-lualine/lualine.nvim',
  enabled = vim.env.IS_NOTES == nil,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local lualine = require 'lualine'
    local colors = {
      black = '#2C2A2E',
      gray = '#403E41',
      white = '#F6F6F5',
      green = '#A6CA7B',

      orange = '#EE9D70',
      purple = '#A69BE8',
      red = '#EB6B88',
      yellow = '#F9D978',
    }

    local theme = {
      normal = {
        a = { fg = colors.black, bg = colors.yellow, gui = 'bold' },
        b = { fg = colors.yellow, bg = colors.gray },
        c = { fg = colors.white, bg = colors.black },
      },
      insert = { a = { fg = colors.black, bg = colors.green, gui = 'bold' } },
      visual = { a = { fg = colors.black, bg = colors.purple, gui = 'bold' } },
      replace = { a = { fg = colors.black, bg = colors.red, gui = 'bold' } },
      inactive = {
        a = { fg = colors.black, bg = colors.yellow, gui = 'bold' },
        b = { fg = colors.black, bg = colors.yellow },
        c = { fg = colors.white, bg = colors.black },
      },
    }
    lualine.setup {
      options = { theme = theme },
      extensions = { 'fzf', 'oil', 'quickfix' },
      sections = {
        lualine_a = {
          function()
            return Tmux_session_name
          end,
          'mode',
        },
        lualine_b = { 'branch', 'diff' },
        lualine_c = {
          {
            'filename',
            path = 1,
          },
        },
        lualine_x = { 'diagnostics' },
        lualine_y = { 'lsp_status' },
      },
    }
  end,
}
