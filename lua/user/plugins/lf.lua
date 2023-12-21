return {
  "lmburns/lf.nvim",
  dependencies = {
    "akinsho/toggleterm.nvim",
  },
  config = function()
    -- This feature will not work if the plugin is lazy-loaded
    vim.g.lf_netrw = 1

    local lf = require("lf")

    lf.setup({
      escape_quit = true,
      border = "rounded",
    })
  end,
}
