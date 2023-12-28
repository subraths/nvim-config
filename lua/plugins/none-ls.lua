return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.trim_newlines,
				null_ls.builtins.formatting.trim_whitespace,
				null_ls.builtins.diagnostics.eslint_d,
			},
		})

		vim.keymap.set("n", "gf", vim.lsp.buf.format, {})
		vim.keymap.set("i", "<C-s>", "<esc><cmd>w<cr>")
		vim.keymap.set("n", "<C-s>", "<cmd>w<cr>")

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function()
				vim.lsp.buf.format({
					bufnr = bufnr,
					filter = function(client)
						return client.name == "null-ls"
					end,
				})
			end,
		})
	end,
}
