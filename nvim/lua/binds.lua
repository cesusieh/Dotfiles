vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<S-k>", vim.lsp.buf.hover, { noremap = true, silent = true })

-- Disable arrow keys
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set("i", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("i", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("i", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("i", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set("n", "<A-h>", "<Cmd>BufferPrevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-l>", "<Cmd>BufferNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-d>", "<Cmd>BufferDelete<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-q>", "<Cmd>BufferDelete<CR>", { noremap = true, silent = true })

-- Nvim Tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ee", ":NvimTreeFocus<CR>", { noremap = true, silent = true })

-- Format buffer
vim.keymap.set("n", "<C-f>", function()
	require("conform").format({ async = true })
	require("lint").try_lint()
end, { desc = "Format buffer" })
