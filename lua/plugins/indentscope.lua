return {
	{
		"nvim-mini/mini.indentscope",
		config = {
	  	draw = {
				delay = 100,
				animation = function (s, n)
		  		return 10
				end,
				priority = 2,
				predicate = function (scope) return not scope.body.is_incomplete end,
	  	},
	  	mappings = {
				object_scope = "ii",
				object_scope_with_border = "ai",
				goto_top = "[i",
				goto_bottom = "]i"
	  	},
	  	options = {
				border = "both",
				indent_at_cursor = true,
				n_lines = 5000,
				try_as_border = false
	  	},
	  	symbol = "╎"
		}
  }
}
