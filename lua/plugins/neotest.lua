return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"marilari88/neotest-vitest",
			"nvim-treesitter/nvim-treesitter",
			"nvim-neotest/neotest-jest"
		},
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-vitest")({
						vitestCommand = "npx vitest"
					}),
					require("neotest-jest")
				}
			})
		end,
		keys = {
			{
				"<leader>tt",
				function()
					require("neotest").run.run()
				end,
				desc = "Run test"
			}
		}
	}
}
