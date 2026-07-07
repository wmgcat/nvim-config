return {
  {
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
		config = function()
	  	vim.lsp.enable({
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss"
	  	})
		end
  }
}
