return {
	{
		"b0o/SchemaStore.nvim",
		lazy = true,
		version = false
	},
  {
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
		config = function()
	  	vim.lsp.enable({
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"json",
				"yaml",
				"eslint"
	  	})

			vim.diagnostic.config({
				virtual_text = true
			})
		end
  }
}
