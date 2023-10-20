local map = vim.keymap.set

map({"i", "n", "v", "x"}, "<C-s>", "<esc><cmd>w<cr>")


local builtin = require('telescope.builtin')

map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader><leader>', builtin.live_grep, {})
