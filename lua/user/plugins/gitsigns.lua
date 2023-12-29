return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = true,
  -- config = function()
  --   local icons = require("user.core.icons")
  --   local gitsigns = require("gitsigns")
  --
  --   gitsigns.setup({
  --     signs = {
  --       add = { text = icons.git.added },
  --       change = { text = icons.git.changed },
  --       delete = { text = icons.git.deleted },
  --       topdelete = { text = icons.git.deleted },
  --       changedelete = { text = icons.git.changed },
  --       untracked = { text = icons.git.added },
  --     },
  --   })
  -- end,
}
