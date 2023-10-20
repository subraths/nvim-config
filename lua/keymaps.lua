local map = vim.keymap.set

map({"i", "n", "v", "x"}, "<C-s>", "<esc><cmd>w<cr>")
