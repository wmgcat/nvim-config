local map = vim.keymap.set

map("n", "<C-b>", "<Cmd>Neotree toggle<CR>")
--map("n", "<C-c>", "<Cmd>1ToggleTerm direction=float<CR>")
--map("n", "<C-t>", "<Cmd>2ToggleTerm direction=horizontal<CR>")
--map("t", "<Esc>", [[<Cmd>ToggleTerm<CR>]])
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "H", "<gv")
map("v", "L", ">gv")

map("n", "]t", function()
	require("todo-comments").jump_next()
end, {
	desc = "Jump next todo-comment"
})
map("n", "[t", function()
	require("todo-comments").jump_prev()
end, {
	desc = "Jump prev todo-comment"
})
map("n", "<leader>tf", "<Cmd>TodoQuickFix<CR>", {
	desc = "Open list todo-comments"
})
local builtin = require('telescope.builtin')
map("n", "<leader>ff", builtin.find_files, {
	desc = "Telescope find files"
})
map("n", "<leader>fg", builtin.live_grep, {
	desc = "Telescope live grep"
})
map("n", "<leader>ft", "<Cmd>TodoTelescope keywords=TODO,FIX<CR>", {
	desc = "Open list todo-comments (project)"
})
