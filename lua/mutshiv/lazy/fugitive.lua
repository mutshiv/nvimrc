return {
    "tpope/vim-fugitive",

    config = function()
        vim.keymap.set("n", "<leader>gp", function ()
            vim.cmd.Git('push')
        end, {desc = 'Git Push'})

        vim.keymap.set("n", "<leader>ga", "<cmd>Gwrite <CR>", {desc = 'Git Add'})
    end,
}
