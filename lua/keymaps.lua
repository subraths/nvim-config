local map = vim.keymap.set

map({"i", "n", "v", "x"}, "<C-s>", "<esc><cmd>w<cr>")


local builtin = require('telescope.builtin')

map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader><leader>', builtin.live_grep, {})

map("n", "<leader>xx", function() require("trouble").toggle() end)
map("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
map("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
map("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
map("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
map("n", "gR", function() require("trouble").toggle("lsp_references") end)
