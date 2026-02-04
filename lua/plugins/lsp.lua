return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Add the lspconfig name of your server here
        -- Example: pyright for Python, tsserver for JS/TS
        -- python
        ruff = {},
        ruff_lsp = {},
        pyright = {},
        -- c/c++
        clangd = {},
        --css
        emmet_ls = {
          filetypes = { "html", "css", "javascriptreact", "typescriptreact", "svelte" },
        },
        tailwindcss = {
          filetypes = { "html", "css", "javascript", "javascriptreact", "typescriptreact", "svelte", "typescript" },
          -- root_dir = require("lspconfig.util").root_pattern(
          --   "tailwind.config.*",
          --   "postcss.config.*",
          --   "package.json",
          --   ".git"
          -- ),
        },
      },
    },
  },
}
