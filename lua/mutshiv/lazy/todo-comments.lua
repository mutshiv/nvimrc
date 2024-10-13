return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "TodoQuickFix",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    keys = {
        vim.keymap.set('n', "<leader>f", "<cmd>TodoQuickFix<CR>", { desc = "TODO List"})
    }
}
