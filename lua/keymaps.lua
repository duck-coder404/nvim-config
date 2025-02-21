-- format
vim.keymap.set('n', '<leader>f', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })

-- warnings
vim.keymap.set('n', '<leader>g', ':lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
