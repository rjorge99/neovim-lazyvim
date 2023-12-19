return {
  "kdheepak/lazygit.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    local keymap = vim.keymap.set

    keymap("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
  end,
}
