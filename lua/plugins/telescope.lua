return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader><leader>", builtin.find_files, {})
		vim.keymap.set("n", "ff", builtin.find_files, {})
		vim.keymap.set("n", "fg", builtin.live_grep, {})
		vim.keymap.set("n", "fb", builtin.buffers, {})
	end,
}
