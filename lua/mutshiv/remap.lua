vim.g.leader = " "
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader><leader>', function()
	vim.cmd("so")
end)

vim.keymap.set('n', '<C-j>', ":m .+1<CR>")
vim.keymap.set('n', '<C-k>', ":m .-2<CR>")

vim.keymap.set('v', '<C-j>', ":m >+1<CR>")
vim.keymap.set('v', '<C-k>', ":m <-2<CR>")
