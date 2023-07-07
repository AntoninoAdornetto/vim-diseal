-- vim.o.background = 'dark'
-- vim.cmd[[colorscheme dracula]]
-- vim.cmd[[colorscheme dracula-soft]]

-- vim.o.background = "dark" 
-- vim.cmd([[colorscheme gruvbox]])

vim.g.nord_contrast = false 
vim.g.nord_borders = false
vim.g.nord_disable_background = true 
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = false 
vim.g.nord_bold = true 
vim.cmd[[colorscheme nord]]

-- vs bunk theme
-- vim.o.background = 'dark'

-- local c = require('vscode.colors').get_colors()
-- require('vscode').setup({
--     transparent = true,
--     italic_comments = true,
--     disable_nvimtree_bg = true,
--     color_overrides = {
--         vscLineNumber = '#FFFFFF',
--     },

--     group_overrides = {
--         -- this supports the same val table as vim.api.nvim_set_hl
--         -- use colors from this colorscheme by requiring vscode.colors!
--         Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
--     }
-- })
-- require('vscode').load()
