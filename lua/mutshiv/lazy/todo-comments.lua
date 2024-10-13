return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd ={
        "TodoQuickFix",
        "TodoLocList",
        "TodoTelescope",
    },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    keys = {
        vim.keymap.set('n', "<leader>jq", "<cmd>TodoQuickFix<CR>", { desc = "TODO List"}),
        vim.keymap.set('n', "<leader>jl", "<cmd>TodoLocList<CR>", { desc = "TODO Location"}),
        vim.keymap.set('n', "<leader>jt", "<cmd>TodoTelescope<CR>", { desc = "TODO Telescope"}),
    }
}
