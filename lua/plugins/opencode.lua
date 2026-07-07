return {
	{
		"nickjvandyke/opencode.nvim",
		version = "*",
		config = function()
			vim.g.opencode_opts = {

			}

			vim.o.autoread = true
			local opencode = require("opencode")
			vim.keymap.set({ "n", "x" }, "<leader>oa", function()
				opencode.ask("@this: ")
			end)

		end
	}
}
