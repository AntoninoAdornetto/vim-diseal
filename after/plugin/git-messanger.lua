-- Keybinding to open git messager using shift + m
vim.api.nvim_set_keymap('n', '<S-m>', ':GitMessenger<CR>', { noremap = true, silent = true })
