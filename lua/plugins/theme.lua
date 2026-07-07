return {
	{
		"nexxeln/vesper.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			disable_background = true,
			transparent = true
		},
		config = function(_, opts)
			require("vesper").setup(opts)	
			vim.cmd.colorscheme("vesper")
		end
	}
}
