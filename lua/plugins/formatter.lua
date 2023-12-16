return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { { "prettier", "prettierd" } },
				typescript = { { "prettier", "prettierd" } },
			},
			format_on_save = {
				lsp_fallback = true,
			},
		},
	},
}
