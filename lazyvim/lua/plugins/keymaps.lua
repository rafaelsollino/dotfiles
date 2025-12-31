local map = vim.keymap.set

map("n", "<leader>xx", "<cmd>TroubleToggle<cr>")
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
