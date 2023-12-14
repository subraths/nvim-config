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
}
