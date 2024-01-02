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
    "rjorge99/vim-enfocado",
    -- "/home/desarrollo/repos/vim-enfocado/",
    priority = 1000,
    config = function()
      vim.g.enfocado_style = "neon"
      vim.cmd([[colorscheme enfocado]])
    end,
    -- dev = true,
  },
  {
    "rjorge99/halcyon-neovim",
    priority = 1000,
    config = function()
      -- vim.cmd([[colorscheme halcyon]])
    end,
  },
}
