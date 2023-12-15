return {
  {
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function ()
			vim.cmd.colorscheme "catppuccin-mocha"
		end
	},
  { "max397574/better-escape.nvim", opts = {} },
	{
		'akinsho/bufferline.nvim',
		version = "*",
		opts = {},
		dependencies = 'nvim-tree/nvim-web-devicons'
	},
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
		event = "VeryLazy",
		opts = {
			options = {
				theme = 'dracula'
			}
		},
  },
	{
		'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
	},
	{
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
	},
	{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
			vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
			vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
			vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
			vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
			vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
		end
	},
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "lewis6991/gitsigns.nvim", opts = {} },
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
}
