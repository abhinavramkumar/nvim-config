return {
  {
    "mfussenegger/nvim-dap",

    dependencies = {
      "leoluz/nvim-dap-go",
      -- "jbyuki/one-small-step-for-vimkind",
      -- -- stylua: ignore
      -- keys = {
      --   { "<leader>daL", function() require("osv").launch({ port = 8086 }) end, desc = "Adapter Lua Server" },
      --   { "<leader>dal", function() require("osv").run_this() end, desc = "Adapter Lua" },
      -- },
      config = function()
        local dap = require("dap")
        dap.adapters.go = function(callback, config)
          callback({ type = "server", host = config.host or "127.0.0.1", port = config.port or 8086 })
        end
        dap.configurations.go = {
          {
            request = "attach",
            name = "Delve Docker",
            type = "go",
            mode = "remote",
            port = 2345,
            host = "0.0.0.0",
            showLog = true,
            apiVersion = 2,
            trace = "verbose",
            cwd = "${workspaceFolder}",
            remotePath = "/app/",
            debugAdapter = "dlv-dap",
            substitutePath = {
              {
                from = "/Users/abhinavramkumar/Projects/work/lending-middleware/",
                to = "/app/",
              },
            },
          },
        }
      end,
    },
  },
}
