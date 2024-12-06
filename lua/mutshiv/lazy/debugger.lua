return {
    'mfussenegger/nvim-dap',
    config = function()
        local dap = require('dap')
        local dapui = require('dapui')

        require('dapui').setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        dap.configurations.java = {
            {
                type = 'java',
                request = 'attach',
                name = "Debug (Attach) - Remote",
                hostName = "127.0.0.1",
                port = 5005,
            },
        }

        vim.keymap.set('n', '<F8>', function() dap.continue() end)
        vim.keymap.set('n', '<F10>', function() dap.step_over() end)
        vim.keymap.set('n', '<F11>', function() dap.step_into() end)
        vim.keymap.set('n', '<F12>', function() dap.step_out() end)
        vim.keymap.set('n', '<leader>bt', function() dap.toggle_breakpoint() end)
    end
}
