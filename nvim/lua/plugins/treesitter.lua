return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "lua", "python", "go" },
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
				},
				ident = {
					enable = true,
				},
			})
		end,
	},
}
