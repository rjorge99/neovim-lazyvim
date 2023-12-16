return { 
    "bluz71/vim-nightfly-guicolors",
    prority = 1000, -- make sure to load this before all the other start  plugins
    config = function()
        --load the color scheme here
        vim.cmd([[colorscheme nightfly]])
    end,
}
