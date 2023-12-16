return {
	{
		"stevearc/conform.nvim",
		config = function()
			local opts = {
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { { "prettier", "prettierd" } },
					typescript = { { "prettier", "prettierd" } },
				},
			}
			require("conform").setup(opts)
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			})
		end,
	},
}
