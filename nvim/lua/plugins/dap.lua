return {
    {
        "mfussenegger/nvim-dap",
        config = function(_, opts)
            local dap = require("dap");

            dap.adapters.lldb = {
                type = "executable",
                command = "/usr/bin/lldb-dap",
                name = "lldb"
            };

            -- dap.configurations.python = {
            --     {
            --         type = 'python',
            --         request = 'launch',
            --         name = "Launch file",
            --         program = "${file}",
            --         pythonPath = function()
            --             return '/usr/bin/python'
            --         end,
            --     },
            -- };


            dap.configurations.cpp = {
                {
                    name = "Launch",
                    type = "lldb",
                    request = "launch",
                    program = function()
                        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                    end,
                    cwd = "${workspaceFolder}",
                    stopOnEntry = false,
                    args = {},
                },
            };

            dap.configurations.c = dap.configurations.cpp;
            dap.configurations.rust = dap.configurations.cpp;
        end
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
        -- config = function()
        --     require("lazydev").setup({
        --         library = { "nvim-dap-ui" },
        --     })
        -- end
    },
    {
        "theHamsta/nvim-dap-virtual-text",
        config = function()
            require("nvim-dap-virtual-text").setup()
        end
    },
}
