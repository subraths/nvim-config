return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
	{ "max397574/better-escape.nvim", opts = {} },
	{
		"akinsho/bufferline.nvim",
		version = "*",
		opts = {},
		dependencies = "nvim-tree/nvim-web-devicons",
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VeryLazy",
		opts = {
			options = {
				theme = "dracula",
			},
		},
	},
	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").config)
		end,
	},
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "lewis6991/gitsigns.nvim", opts = {} },
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
}
