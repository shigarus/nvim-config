local function findBufferID()
  for _, v in pairs(vim.api.nvim_list_bufs()) do
    bufname = vim.api.nvim_buf_get_name(v)
    -- /bin/sh means some plugin opened terminal window for its work (for example fzf-lua)
    if vim.startswith(bufname, 'term://') and not vim.endswith(bufname, '/bin/sh') then
      return v
    end
  end
  return nil
end

local function ToggleTerminal()
  if vim.bo.buftype == 'terminal' then
    vim.cmd 'bp'
    return
  end

  local termBufID = findBufferID()

  if termBufID then
    vim.cmd('b' .. termBufID)
  else
    termBufID = vim.api.nvim_create_buf(true, false)
    vim.api.nvim_buf_attach(termBufID, false, {})
    vim.cmd 'term'
  end
end

M = {}

M.ToggleTerminal = ToggleTerminal

return M
