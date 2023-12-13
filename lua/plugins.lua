return {
  { 
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function ()
			require("catppuccin").setup()
			vim.cmd.colorscheme "catppuccin-mocha"
		end
	},
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
		"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
		config = function ()
			local config	= require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = {"lua", "tsx", "javascript", "typescript"},
  			highlight = { enable = true },
  			indent = { enable = true },
				autotag = {
					enable = true,
				}
			})

			local builtin = require("telescope.builtin")
			vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
			vim.keymap.set('n', 'ff', builtin.find_files, {})
			vim.keymap.set('n', 'fg', builtin.live_grep, {})
			vim.keymap.set('n', 'fb', builtin.buffers, {})
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
		opts = {},
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
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
		config = function ()
			require("neo-tree").setup({
				close_if_last_window = true,
				window = {
					width = 32,
				},
			})
			vim.keymap.set('n', '<C-n>', '<cmd>Neotree toggle<cr>')
		end
	},
	{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
	}
}
