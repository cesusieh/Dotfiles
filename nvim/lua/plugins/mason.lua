return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()

			local ensure_installed = {
				-- LSP
				"lua-language-server", -- Lua
				"pyright", -- Python
				"gopls", -- Go

				-- Formatters
				"stylua", -- Lua
				"black", -- Python
				"gofumpt", -- Go
				"goimports", -- Go

				-- Linters
				"luacheck", -- Lua
				"flake8", -- Python
				"golangci-lint", -- Go
			}

			local mason_registry = require("mason-registry")
			for _, package in ipairs(ensure_installed) do
				local p = mason_registry.get_package(package)
				if not p:is_installed() then
					p:install()
				end
			end
		end,
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },

		opts = {
			servers = {
				lua_ls = {},
				pyright = {},
				gopls = {},
			},
		},

		config = function(_, opts)
			local lspconfig = require("lspconfig")
			for server, config in pairs(opts.servers) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup({ capabilities = capabilities })
			end
		end,
	},

	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "black" },
					go = { "gofumpt", "goimports" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
	},

	{
		"mfussenegger/nvim-lint",
		config = function()
			require("lint").linters_by_ft = {
				lua = { "luacheck" },
				python = { "flake8" },
				go = { "golangcilint" },
			}

			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
}
