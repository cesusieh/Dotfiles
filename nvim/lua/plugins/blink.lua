return {
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		---@module "blink.cmp"
		---@type blink.cmp.Config
		opts = {
			keymap = {
				preset = "default",
				["<Tab>"] = { "select_next", "fallback" },
				["<S-Tab>"] = { "select_prev", "fallback" },
				["<Cr>"] = { "select_and_accept", "fallback" },
			},
			completion = {
				ghost_text = { enabled = true },
				menu = {
					draw = {
						columns = {
							{ "kind_icon", "label", gap = 1 },
							{ "kind" },
						},
					},
				},
				documentation = { auto_show = true, auto_show_delay_ms = 500 },
			},
			fuzzy = { implementation = "lua" },
		},
	},
}
