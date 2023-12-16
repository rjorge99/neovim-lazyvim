return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        file_ignore_patterns = { "node_modules", ".git/", ".next/", ".git\\", ".next\\", ".jpg", ".jgp", ".bmp" }, -- Que ignore la carpeta de nod
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")
    -- telescope.load_extension("git_worktree")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })


-- -- telescope
-- keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- find files within current working directory, respects .gitignore
-- keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- find string in current working directory as you type
-- keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- find string under cursor in current working directory
-- keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- list open buffers in current neovim instance
-- keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- list available help tags
-- keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- list available help tags
-- keymap("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", opts) -- list available help tags
-- keymap("n", "<leader>wt", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>", opts) -- list of worktrees
-- keymap("n", "<leader>wT", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>", opts) -- list of worktrees
  end,
}