vim.api.nvim_command([[
  command! ToggleTerm lua require('toggleterm').toggle()
]])

require('toggleterm').setup{
  size = 15,
	open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1',
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = 'horizontal',
}

vim.api.nvim_set_keymap('n', '<C-\\><C-\\>', ':ToggleTermOpenAll<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-\\><C-n>', ':ToggleTermCloseAll<CR>', { noremap = true, silent = true })
