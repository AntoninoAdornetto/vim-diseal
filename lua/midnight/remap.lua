local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- going to try out nvim tree for a little bit.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- map("n", "<leader>pv", ":NvimTreeToggle<CR>", opts)
-- map("n", "<Leader>r", ":NvimTreeRefresh<CR>", opts)

map("n", "<Leader>bp", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
map("n", "<Leader>dap", ":lua require'dapui'.toggle()<CR>", opts)
map("n", "<Leader>ar", ":lua require'dap'.repl.open()<CR>", opts)
map("n", "<F5>", ":lua require'dap'.continue()<CR>", opts)
map("n", "<F10>", ":lua require'dap'.step_over()<CR>", opts)
map("n", "<F11>", ":lua require'dap'.step_into()<CR>", opts)
map("n", "<F12>", ":lua require'dap'.step_out()<CR>", opts)
