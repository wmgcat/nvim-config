return {
 	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		keys = {
			{
				"<C-c>",
				"<Cmd>1ToggleTerm direction=float<CR>",
				desc = "Run overlay terminal",
				mode = { "n" }
			},
			{
				"<C-t>",
				"<Cmd>2ToggleTerm direction=horizontal<CR>",
				desc = "Run bottom terminal",
				mode = { "n" }
			},
			{
				"<Esc>",
				[[<Cmd>ToggleTerm<CR>]],
				desc = "Close current terminal",
				mode = { "t" }
			}
		}
	}
}
