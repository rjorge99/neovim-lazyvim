return {
  "phaazon/hop.nvim",
  branch = "v2", -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    local hop = require("hop")
    hop.setup({ keys = "etovxqpdygfblzhckisuran" })

    local keymap = vim.keymap.set

    keymap("n", "<leader><leader>s", "<cmd>HopChar1<cr>", { desc = "Jump in text" }) -- Easy motion
  end,
}
