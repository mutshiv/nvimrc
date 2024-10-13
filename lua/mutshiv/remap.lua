vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Current Browsing dir" })

local opts = { noremap = true, silent = true }

-- Normal mode mapping
vim.keymap.set('n', '<C-j>', ':m .+1<CR>', opts)
vim.keymap.set('n', '<C-k>', ':m .-2<CR>', opts)

-- Visual mode mapping
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", opts)
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", opts)

-- vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank..." })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete..." })

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- save current file
vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<C-q>", "<cmd>:q<CR>", { desc = "Quit NVIM" })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format file" })

--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>s", "<nop>", {desc = "[S]earch..."})
vim.keymap.set("n", "<leader>v", "<nop>", {desc = "Vim Help..."})
vim.keymap.set("n", "<leader>p", "<nop>", {desc = "Project..."})
