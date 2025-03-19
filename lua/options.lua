vim.opt.tabstop = 4               -- Number of spaces that a <Tab> counts for
vim.opt.shiftwidth = 4            -- use tap as 4 spaces
vim.opt.smarttab = true           -- continue with the same tab hight
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.syntax = "on"             -- Enable syntax highlighting
vim.opt.number = true             -- Enable line numbers
vim.opt.list = true               -- Enable whitespace visualization
vim.opt.undofile = true           -- Save undo history
vim.opt.clipboard = "unnamedplus" -- Use the system clipboard always
vim.g.have_nerd_font = false
vim.opt.showmode = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.listchars = {
    tab = "▸▸",
    trail = "•",
    space = "·",
    eol = "↴",
}
