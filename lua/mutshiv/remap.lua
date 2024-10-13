vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Current Browsong dir" })

local opts = { noremap = true, silent = true }

-- Normal mode mapping
keymap('n', '<C-j>', ':m .+1<CR>', opts)
keymap('n', '<C-k>', ':m .-2<CR>', opts)

-- Visual mode mapping
keymap('v', '<C-j>', ":m '>+1<CR>", opts)
keymap('v', '<C-k>', ":m '<-2<CR>", opts)

--vim.keymap.set("v", "K", ":m '<-2<CR>", { desc = "Move Line 1 Down" })
--vim.keymap.set("v", "J", ":m '>+1<CR>", { desc = "Move Line 1 Up" })

--vim.keymap.set("n", "<C-j>", ":m '.+1<CR>", { desc = "Move Line 1 Up" })
--vim.keymap.set("n", "<C-k>", ":m '.-2<CR>", { desc = "Move Line 1 Down" })

-- vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- save current file
vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>", { desc = "Move Line 1 Down" })
vim.keymap.set("n", "<C-q>", "<cmd>:q<CR>", { desc = "Move Line 1 Down" })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
