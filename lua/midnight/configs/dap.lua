local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<F11>", ":lua require'dap'.continue()<CR>",opts)
map("n", "<leader>in", ":lua require'dap'.step_into()<CR>",opts)
map("n", "<leader>ov", ":lua require'dap'.step_over()<CR>",opts)
map("n", "<leader>ou", ":lua require'dap'.step_out()<CR>",opts)
map("n", "<leader>bp", ":lua require'dap'.toggle_breakpoint()<CR>",opts)
map("n", "<leader>cbp", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",opts)
map("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>",opts)
map("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>",opts)
map("n", "<leader>dgt", ":lua require'dap-go'.debug_test()<CR>",opts)


require("nvim-dap-virtual-text").setup()
require("dap-go").setup()
require("dapui").setup()

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
