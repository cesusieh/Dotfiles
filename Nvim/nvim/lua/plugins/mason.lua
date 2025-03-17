return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "neovim/nvim-lspconfig" },
		config = function()
			require("mason-lspconfig").setup({

				ensure_installed = {
					"gopls", -- Golang
					"pyright", -- Python
					"lua_ls", -- Lua
				},

				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({
							capabilities = capabilities,
						})
					end,
				},
			})
		end,
	},

	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "williamboman/mason.nvim" },
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua, -- Lua
					null_ls.builtins.formatting.black, -- Python
					null_ls.builtins.formatting.gofumpt, -- Go
					null_ls.builtins.formatting.goimports, -- Go

					null_ls.builtins.diagnostics.flake8, -- Python
					null_ls.builtins.diagnostics.golangci_lint, -- Go
				},
			})

			vim.api.nvim_create_autocmd("InsertLeave", {
				pattern = { "*.lua", "*.py", "*.go" },
				callback = function()
					vim.lsp.buf.format({
						async = false,
						filter = function(client)
							return client.name == "null-ls"
						end,
					})
				end,
			})
		end,
	},
}
