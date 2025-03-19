-- format
vim.keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>:w<CR>", { noremap = true, silent = true })

-- lsp stuff
vim.keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", ":lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<C-k>", ":lua vim.lsp.buf.range_code_action()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>s", ":lua vim.lsp.buf.signature_help()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>lr", ":lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gr", ":lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>g", ":lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
--vim.keymap.set("n", "[d", ":lua vim.diagnostic.goto_prev({border="single"})<CR>", { noremap = true, silent = true })
--vim.keymap.set("n", "]d", ":lua vim.diagnostic.goto_next({border="single"})<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":lua vim.diagnostic.setloclist()<CR>", { noremap = true, silent = true })

-- telescope
vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>", { noremap = true, silent = true })

-- debug
vim.keymap.set("n", "<leader>b", ":DapToggleBreakpoint<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<F5>", ":DapContinue<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<F10>", ":DapStepOver<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<F11>", ":DapStepInto<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<F12>", ":DapStepOut<CR>", { noremap = true, silent = true })

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
