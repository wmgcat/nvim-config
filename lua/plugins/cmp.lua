return {
	{
		"hrsh7th/nvim-cmp",
		version = false,
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"folke/lazydev.nvim",
			"saadparwaiz1/cmp_luasnip"
		},
		opts = function()
			vim.lsp.config("*", { capabilities = require("cmp_nvim_lsp").default_capabilities() })
			vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })

			local cmp = require("cmp")
			local luasnip = require("luasnip")
			local defaults = require("cmp.config.default")()
			local auto_select = true
			return {
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end
				},
				auto_brackets = {

				},
				completion = {
					completeopt = "menu,menuone,noinsert" .. (auto_select and "" or ",noselect")
				},
				preselect = auto_select and cmp.PreselectMode.Item or cmp.PreselectMode.None,
				mapping = cmp.mapping.preset.insert({
					["<C-Space>"] = cmp.mapping.complete(),
					["<CR>"] = cmp.mapping.confirm({ select = auto_select }),
					["<tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						else
							fallback()
						end
					end, { "i", "s" })
				}),
				sources = cmp.config.sources({
					{ name = "lazydev" },
					{ name = "nvim_lsp" },
					{ name = "path" },
					{ name = "luasnip" }
				}, {
					{ name = "buffer" }
				}),
				formatting = {
					format = function(entry, item)
						local widths = {
							abbr = vim.g.cmp_widths and vim.g.cmp_widths.abbr or 40,
							menu = vim.g.cmp_widths and vim.g.cmp_widths.menu or 30
						}

						for key, width in pairs(widths) do
							if item[key] and vim.fn.strdisplaywidth(item[key]) > width then
								item[key] = vim.fn.strcharpart(item[key], 0, width - 1) .. "…"
							end
						end

						return item
					end
				},
				experimental = {
					ghost_text = vim.g.ai_cmp and {
						hl_group = "CmpGhostText"
					}
				},
				sorting = defaults.sorting
			}
		end
	}
}
