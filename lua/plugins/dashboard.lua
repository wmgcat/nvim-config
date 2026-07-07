return {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		opts = function()
			local logo = {
				{
					" _^__^_",
					" |.  .|",
					"  \\  /",
					"  /|  |\\",
					" /_|  |_\\",
					"  u|__|u",
					" _|  |_"
				},
				{
					" _^__^_",
					" |.  .|",
					" ======",
					" ||/ | ",
					" u|__|u",
					" _|  |_"
				},
				{
					" _^__^_",
					" |.  .|",
					"  \\  /",
					" | ======",
					" \\ =    =",
					" ========",
				}
			}

			logo = string.rep("\n", 8) .. table.concat(logo[math.random(#logo)], "\n") .. "\n\n"

			local opts = {
				hide = {
					statusline = false
				},
				config = {
					header = vim.split(logo, "\n"),
					week_header = {
						enable = false
					},
					shortcut = {
					},
					packages = {
						enable = false
					},
					footer = function()
						return {
							""
						}
					end,
					disable_move = true
				}
			}

			return opts
		end,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			{
				"nvim-telescope/telescope.nvim",
				version = "*",
				dependencies = {
					"nvim-lua/plenary.nvim",
					{
						"nvim-telescope/telescope-fzf-native.nvim",
						build = "make"
					}
				}
			}
		}
	}
}
