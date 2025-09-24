return {
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    config = function()
      local jdtls = require("jdtls")

      -- Workspace folder for each project
      local home = os.getenv("HOME")
      local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
      local workspace_dir = home .. "/.local/share/eclipse/" .. project_name

      local config = {
        cmd = {
          vim.fn.stdpath("data") .. "/mason/bin/jdtls", -- mason installed jdtls
          "-data",
          workspace_dir,
        },
        root_dir = require("jdtls.setup").find_root({
          ".git",
          "mvnw",
          "gradlew",
          "pom.xml",
        }),
      }

      jdtls.start_or_attach(config)
    end,
  },
}
