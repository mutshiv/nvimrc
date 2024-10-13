return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.8",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = "[S]earch [F]iles" })
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>sw', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end, { desc = "[S]earch [w]ord" })
        vim.keymap.set('n', '<leader>sW', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end, { desc = "[S]earch [W]ord" })
        vim.keymap.set('n', '<leader>sg', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = "[S]earch Grep" })
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {desc = "Help"})

        -- Git information
        vim.keymap.set('n', '<leader>g', "<nop>", {desc = "Git"})
        vim.keymap.set('n', '<leader>gs', builtin.git_status, {desc = "Status"})
        vim.keymap.set('n', '<leader>gc', builtin.git_commits, {desc = "Commits"})
        vim.keymap.set('n', '<leader>gb', builtin.git_branches, {desc = "Branches"})
        vim.keymap.set('n', '<leader>gt', builtin.git_stash, {desc = "Stash List"})
    end
}
