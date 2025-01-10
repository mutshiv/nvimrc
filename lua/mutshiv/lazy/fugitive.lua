return {
    "tpope/vim-fugitive",

    config = function()
        vim.keymap.set("n", "<leader>gp", function()
            vim.cmd.Git('push')
        end, { desc = 'Git Push' })

        vim.keymap.set("n", "<leader>ga", "<cmd>G <CR>", { desc = 'Git Add' })
        vim.keymap.set("n", "<leader>gcc", "<cmd>Git commit <CR>", { desc = 'Git Commit' })
        vim.keymap.set("n", "<leader>gP", "<cmd>Git pull <CR>", { desc = 'Git Pull' })
    end,
}
