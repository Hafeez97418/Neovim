return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "BufReadPost",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      hide_during_completion = vim.g.ai_cmp,
      keymap = {
        accept = "<M-Right>",
        next = "<M-]>",
        prev = "<M-[>",
        disable = "<M-\\>",
      },
    },
    panel = { enabled = true },
    filetypes = {
      markdown = true,
      help = true,
    },
  },
}
