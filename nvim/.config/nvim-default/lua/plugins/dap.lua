return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      dap.adapters.codelldb = {
        type = "server",
        host = "127.0.0.1",
        port = "${port}",

        executable = {
          command = "codelldb",
          args = { "--port", "${port}" },
        },
      }

      -- dap.configurations.rust = {
      --   {
      --     name = "Rust debug",
      --     type = "codelldb",
      --     request = "launch",
      --     program = function()
      --       return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
      --     end,
      --     cwd = "${workspaceFolder}",
      --     stopOnEntry = true,
      --   },
      -- }
      -- vim.keymap.set("n", "<F5>", function()
      --   require("dap").continue()
      -- end, { desc = "Debug Continue" })
      -- vim.keymap.set("n", "<F6>", function()
      --   require("dap").toggle_breakpoint()
      -- end, { desc = "Toggle Breakpoint" })
      -- vim.keymap.set("n", "<F7>", function()
      --   require("dap").step_over()
      -- end, { desc = "Debug Step Over" })
      -- vim.keymap.set("n", "<F8>", function()
      --   require("dap").step_into()
      -- end, { desc = "Debug Step Into" })
      -- vim.keymap.set("n", "<F9>", function()
      --   require("dap").step_out()
      -- end, { desc = "Debug Step Out" })
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "nvim-neotest/nvim-nio", "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup()

      local dap, dapui = require("dap"), require("dapui")

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
    end,
  },
}
