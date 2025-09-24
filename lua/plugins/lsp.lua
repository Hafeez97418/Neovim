return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      emmet_ls = {
        filetypes = { "html", "css", "javascriptreact", "typescriptreact", "svelte" },
      },
      tailwindcss = {
        filetypes = { "html", "css", "javascript", "javascriptreact", "typescriptreact", "svelte", "typescript" },
        root_dir = require("lspconfig.util").root_pattern(
          "tailwind.config.js",
          "tailwind.config.ts",
          "postcss.config.js",
          "package.json",
          ".git"
        ),
      },
      clangd = {},
      jdtls = {},
    },
    setup = {
      jdtls = function()
        return true --avoiding duplicates jdtls servers
      end,
    },
  },
}
