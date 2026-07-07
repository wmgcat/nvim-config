return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		opts = {
			options = {
				theme = "onedark",
				component_separators = "",
				section_separators = { left = "", right = "" }
			},
			sections = {
				lualine_a = {
					{
						"mode",
						right_padding = 2
					}
				},
				lualine_b = { 
          { 
            "branch", 
            icon = ""
          }, 
          {
            "diff",
            symbols = {
							added = " ",
							modified = " ",
							removed = " "
						}
          }
        },
				lualine_c = {
					{
						"filename",
						path = 1
					}	
				},
				lualine_x = {},
				lualine_y = { "encoding" },
				lualine_z = {
					{ "filesize" },
					{
						function()
							return vim.api.nvim_buf_line_count(0)
						end,
						icon = ""
					}
				}
			}
		}
	}
}
