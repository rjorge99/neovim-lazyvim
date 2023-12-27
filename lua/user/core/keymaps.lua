-- Shorten
local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Save
keymap("n", "<leader>ss", ":w!<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Exit
keymap("n", "QQ", "<cmd>:q!<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- delete single character without copying into register
keymap("n", "x", '"_x', opts)

-- increment/decrement numbers
keymap("n", "<leader>+", "<C-a>", opts) -- increment
keymap("n", "<leader>-", "<C-x>", opts) -- decrement

-- window management
keymap("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
keymap("n", "<leader>sh", "<C-w>s", opts) -- split window horizontally
keymap("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
keymap("n", "<leader>sx", ":close<CR>", opts) -- close current split window

keymap("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
keymap("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
keymap("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
keymap("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- Window
keymap("n", "<leader>w", "<cmd>close<CR>", opts)

-- Move text up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- J keeps cursor in current position
keymap("n", "J", "mzJ`z", opts)

-- Doesn copy replaced word
keymap("v", "<leader>p", '"_dP', opts)

-- Keeps cursor in center when jumping
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

-- Move text up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
keymap("n", "<c-d>", "<c-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
----------------------
-- Plugin Keybinds
----------------------

-- Varios
keymap("n", "<leader><leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
keymap("n", "<leader><leader>s", "<cmd>HopChar1<cr>", opts) -- Easy motion
keymap("n", "<leader>br", ":%s/", opts) -- Replace a word based on regular expressions
keymap("n", "<leader>ic", "f{a<CR><C-o>O", opts) -- Insert code between {}}
keymap("n", "<leader><leader>e", ":wq!<CR>", opts) -- Save and exit
keymap("n", "<leader>k", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts) -- Show function signature

-- Code run
keymap("n", "<leader><leader>cr", ":Lab code run<cr>", opts)
keymap("n", "<leader><leader>cs", ":Lab code stop<cr>", opts)

-- Close buffers
keymap("n", "<leader>bc", "<cmd>Bdelete!<CR>", opts)
keymap("n", "<leader>bo", ":%bd|e#|bd#<CR>", opts)

-- Naviagate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Color Picker
keymap("n", "<C-c>", "<cmd>PickColor<cr>", opts)
keymap("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)

-- Vcoolor
-- <Alt-R> you can insert a rgb color anywhere (NORMAL and INSERT modes).
-- <Alt-V> you can insert a hsl color anywhere (NORMAL and INSERT modes).
-- <Alt-W> you can insert a rgba color anywhere (NORMAL and INSERT modes).

-- Markdown-Preview Plugin
keymap("n", "<leader>mp", ":MarkdownPreview<CR>", opts)

-- Give executon permits to current file
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", opts)

-- Custom Scripts
keymap("n", "<C-f>", ":silent !tmux neww tmux-sessionizer<CR>", opts)
