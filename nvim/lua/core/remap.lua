local map = vim.keymap.set

map("i","jk","<ESC>")



local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, {})
map("n", "<leader>fg", builtin.live_grep, {})

map("n", "<leader>e", ":NvimTreeToggle<CR>")

map("n","<leader>sa","ggVG")




