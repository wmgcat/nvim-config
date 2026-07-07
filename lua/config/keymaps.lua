local map = vim.keymap.set

map("n", "<C-b>", "<Cmd>Neotree toggle<CR>")
map("n", "<C-c>", "<Cmd>1ToggleTerm direction=float<CR>")
map("n", "<C-t>", "<Cmd>2ToggleTerm direction=horizontal<CR>")
map("t", "<Esc>", [[<Cmd>ToggleTerm<CR>]])
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "H", "<gv")
map("v", "L", ">gv")
