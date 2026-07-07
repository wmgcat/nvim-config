return {
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		build = "make install_jsregexp",
		dependencies = {
			"rafamadriz/friendly-snippets"
		},
		config = function()
			local ls = require("luasnip")

			ls.config.setup({
				history = true,
				updateevents = "TextChanged,TextChangedI"
			})

			ls.filetype_extend("javascriptreact", { "javascript" })
			ls.filetype_extend("typescript", { "javascript" })
			ls.filetype_extend("typescriptreact", { "javascript" })

			require("luasnip.loaders.from_vscode").lazy_load({
				paths = {
					"./snippets"
				}
			})
		end
	}
}
