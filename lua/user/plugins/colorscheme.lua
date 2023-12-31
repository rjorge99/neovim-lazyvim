return {
  {
    "bluz71/vim-nightfly-guicolors",
    prority = 1000,
    config = function()
      -- vim.cmd([[colorscheme nightfly]])
    end,
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      -- vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "wuelnerdotexe/vim-enfocado",
    priority = 1000,
    config = function()
      vim.g.enfocado_style = "neon"
      vim.cmd([[colorscheme enfocado]])
    end,
  },
  {
    "rjorge99/halcyon-neovim",
    priority = 1000,
    config = function()
      -- vim.cmd([[colorscheme halcyon]])
    end,
  },
}
