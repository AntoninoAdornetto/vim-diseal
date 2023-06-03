local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	filetypes = {"go", "c"},
	sources = {
		null_ls.builtins.formatting.gofmt,
		null_ls.builtins.formatting.golines,
		null_ls.builtins.formatting.goimports,
		null_ls.builtins.formatting.clang_format,
		-- goimports reviser will be nice to use on a new project. revist
		-- null_ls.builtins.formatting.goimports_reviser,
	},
	on_attach = function (client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({
				group = augroup,
				buffer = bufnr,
			})
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function ()
					vim.lsp.buf.format({bufnr = bufnr})
				end,
			})
		end
	end
})
