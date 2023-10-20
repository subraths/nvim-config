return {
  -- the colorscheme should be available when starting neovim

{
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,
	opts = { style = 'darker'},
},

  -- I have a separate config.mappings file where I require which-key.
  -- With lazy the plugin will be automatically loaded when it is required somewhere
  { "folke/which-key.nvim", lazy = true },

  {
    "nvim-neorg/neorg",
    -- lazy-load on filetype
    ft = "norg",
    -- options for neorg. This will automatically call `require("neorg").setup(opts)`
    opts = {
      load = {
        ["core.defaults"] = {},
      },
    },
  },

  {
    "dstein64/vim-startuptime",
    -- lazy-load on a command
    cmd = "StartupTime",
    -- init is called during startup. Configuration for vim plugins typically should be set in an init function
    init = function()
      vim.g.startuptime_tries = 10
    end,
  },

  "neovim/nvim-lspconfig",



  -- if some code requires a module from an unloaded plugin, it will be automatically loaded.
  -- So for api plugins like devicons, we can always set lazy=true
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- you can use the VeryLazy event for things that can
  -- load later and are not important for the initial UI
  { "stevearc/dressing.nvim", event = "VeryLazy" },

  {
    "Wansmer/treesj",
    keys = {
      { "J", "<cmd>TSJToggle<cr>", desc = "Join Toggle" },
    },
    opts = { use_default_keymaps = false, max_join_length = 150 },
  },

  {
    "monaqa/dial.nvim",
    -- lazy-load on keys
    -- mode is `n` by default. For more advanced options, check the section on key mappings
    keys = { "<C-a>", { "<C-x>", mode = "n" } },
  },

  -- local plugins need to be explicitly configured with dir
  -- { dir = "~/projects/secret.nvim" },

  -- you can use a custom url to fetch a plugin
 -- { url = "git@github.com:folke/noice.nvim.git" },

  -- local plugins can also be configure with the dev option.
  -- This will use {config.dev.path}/noice.nvim/ instead of fetching it from Github
  -- With the dev option, you can easily switch between the local and installed version of a plugin
  { "folke/noice.nvim", dev = true },
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
},
{
	"mhartington/formatter.nvim",
},
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	{"hrsh7th/nvim-cmp"},
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	{
		"williamboman/mason.nvim",
		opts = {
			    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
		},
	},
	    {
		    "williamboman/mason-lspconfig.nvim",
opts = {},
    },
	{
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {},
},

--dap
	"mfussenegger/nvim-dap",
	{
		"rcarriga/nvim-dap-ui",
		opts = {},
	},
	{ "folke/neodev.nvim",
	opts = {
		library = {
			plugins = { "nvim-dap-ui" },
			types = true
		}
	}
},
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    keys = {
	    {
		    "<leader>e",
		    function ()
		    	require('neo-tree.command').execute({ toggle = true })
		    end,
	    }
    }
},
{'akinsho/bufferline.nvim', version = "*",
opts = {
	options = {
		offsets = {
			filetype = "Neotree",
			text = "File Explorer",
		}
	},
},
dependencies = 'nvim-tree/nvim-web-devicons'},
}
