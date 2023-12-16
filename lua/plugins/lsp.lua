return {
	{
		"neovim/nvim-lspconfig",
	},
	{ "folke/neodev.nvim", opts = {} },
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			})
		end,
	},
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")
			dap.adapters["pwa-node"] = {
				type = "server",
				host = "localhost",
				port = "${port}",
				executable = {
					command = "node",
					args = { "/home/subraths/.local/share/nvim/mason/js-debug/src/dapDebugServer.js", "${port}" },
				},
			}

			dap.configurations.typescript = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch file",
					program = "${file}",
					cwd = "${workspaceFolder}",
				},
			}
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
    -- stylua: ignore
		keys = {
      {"<C-i>", function() require("dapui").toggle({}) end, desc = "Dap UI",},
      {"<c-b>", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint"},
		},

		opts = {},
		config = function(_, opts)
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup(opts)
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open({})
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close({})
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close({})
			end
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		opts = {
			handlers = {},
		},
	},
}
