return {
  {
		"nvim-neo-tree/neo-tree.nvim",
		cmd = "Neotree",
		branch = "v3.x",
		dependencies = {
	  	"nvim-lua/plenary.nvim",
	  	"MunifTanjim/nui.nvim",
	  	"s1n7ax/nvim-window-picker",
	  	"nvim-tree/nvim-web-devicons"
		},
		lazy = false,
		opts = {
	  	sources = {
				"filesystem",
				"buffers",
				"git_status"
	  	},
	  	filesystem = {
				visibled = true,
				hide_dotfiles = false,
				hide_gitignored = false,
				bind_to_cwd = false,
				follow_current_file = { enabled = true },
				use_libuv_file_watcher = true,
	  	},
	  	default_component_configs = {
				indent = {
		  		with_expanders = true,
		  		expander_highlight = "NeoTreeExpander"
				},
				file_size = { enabled = true },
				type = { enabled = true },
				last_modified = {
					enabled = true,
					format = "%H:%M %d.%m.%Y"
				}
	  	}
		}
	}
}
