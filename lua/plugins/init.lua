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
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			local cmp = require("cmp")
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
			require("nvim-autopairs").setup()
		end,
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local trouble = require("trouble")
			local keymap = vim.keymap

			keymap.set("n", "<leader>xx", function()
				trouble.toggle()
			end)
			keymap.set("n", "<leader>xw", function()
				trouble.toggle("workspace_diagnostics")
			end)
			keymap.set("n", "<leader>xd", function()
				trouble.toggle("document_diagnostics")
			end)
			keymap.set("n", "<leader>xq", function()
				trouble.toggle("quickfix")
			end)
			keymap.set("n", "<leader>xl", function()
				trouble.toggle("loclist")
			end)
			keymap.set("n", "gR", function()
				trouble.toggle("lsp_references")
			end)
		end,
	},
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "lewis6991/gitsigns.nvim", opts = {} },
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
}
