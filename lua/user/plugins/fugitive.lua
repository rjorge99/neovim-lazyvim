return {
  "tpope/vim-fugitive",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local keymap = vim.keymap.set -- for conciseness

    keymap("n", "<leader>gs", ":Git<CR>", { desc = "Git status" })
  end,
}
