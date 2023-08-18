-- local null_ls = require("null-ls")
-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- null_ls.setup({
-- 	filetypes = {"go", "c"},
-- 	sources = {
-- 		null_ls.builtins.formatting.gofmt,
-- 		null_ls.builtins.formatting.golines,
-- 		null_ls.builtins.formatting.goimports,
-- 		null_ls.builtins.formatting.clang_format,
-- 		-- goimports reviser will be nice to use on a new project. revist
-- 		-- null_ls.builtins.formatting.goimports_reviser,
-- 	},
-- 	on_attach = function (client, bufnr)
-- 		if client.supports_method("textDocument/formatting") then
-- 			vim.api.nvim_clear_autocmds({
-- 				group = augroup,
-- 				buffer = bufnr,
-- 			})
-- 			vim.api.nvim_create_autocmd("BufWritePre", {
-- 				group = augroup,
-- 				buffer = bufnr,
-- 				callback = function ()
-- 					vim.lsp.buf.format({bufnr = bufnr})
-- 				end,
-- 			})
-- 		end
-- 	end
-- })
--
local null_ls = require('null-ls')

local sources = {
	-- Go sources
	null_ls.builtins.formatting.gofmt,
	null_ls.builtins.formatting.golines,
	null_ls.builtins.formatting.goimports,

	-- C sources
	null_ls.builtins.formatting.clang_format,

	-- Frontend sources (using prettier)
	null_ls.builtins.formatting.prettier.with({
		filetypes = {
			"css", "graphql", "html", "javascript", "javascriptreact",
			"json", "less", "markdown", "scss", "typescript",
			"typescriptreact", "yaml"
		},
	}),
}

null_ls.setup({
	sources = sources,
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			-- Keymapping for manual formatting
			vim.keymap.set("n", "<Leader>ft", function()
				vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
			end, { buffer = bufnr, desc = "[lsp] format" })

			-- Autocommand for formatting on save
			local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
			local event = "BufWritePre"
			vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
			vim.api.nvim_create_autocmd(event, {
				buffer = bufnr,
				group = group,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
				desc = "[lsp] format on save",
			})
		end

		if client.supports_method("textDocument/rangeFormatting") then
			vim.keymap.set("x", "<Leader>f", function()
				vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
			end, { buffer = bufnr, desc = "[lsp] format" })
		end
	end,
})
