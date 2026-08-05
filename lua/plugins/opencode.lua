return {
	{
		"nickjvandyke/opencode.nvim",
		version = "*",
		dependencies = {
			"folke/snacks.nvim"
		},
		config = function()
			vim.g.opencode_opts = {

			}

			vim.o.autoread = true
			local opencode = require("opencode")
			vim.keymap.set({ "n", "x" }, "<leader>oa", function()
				opencode.ask("@this: ")
			end)

			require("snacks").setup({
				input = {
					enabled = true
				},
				picker = {
					enabled = true,
					win = {
						input = {
							keys = {
								["<a-a>"] = {
									"opencode_send",
									mode = { "n", "i" }
								}
							}
						}
					}
				},
				actions = {
					opencode_send = function(picker)
						local items = vim.tbl_map(function(item)
							return item.file
								and opencode.format({
									path = item.file,
									from = item.post,
									to = item.end_post
								}) or item.text
						end, picker:selected({ fallback = true }))

						opencode.prompt(table.concat(items, ", ") .. " ")
					end
				}
			})

		end
	}
}
