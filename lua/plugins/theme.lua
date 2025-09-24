return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("carbonfox") -- set carbonfox as default
    end,
  },
  {
    "Lazyvim/Lazyvim",
    opts = {
      colorscheme = "nightfox", -- Replace "nightfox" with the name of your desired colorscheme
    },
  },
}
