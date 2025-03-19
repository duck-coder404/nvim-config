return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "saghen/blink.cmp",
        {
            "williamboman/mason.nvim",
            config = true,
        },
        "williamboman/mason-lspconfig.nvim",
        {
            "j-hui/fidget.nvim",
            config = true,
        },
    },

    config = function()
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("kickstart-lsp-attach", {
                clear = true,
            }),
            callback = function() end,
        })
        ---@diagnostic disable-next-line: missing-fields
        require("mason-lspconfig").setup({
            handlers = {
                function(server)
                    local config = {}
                    config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
                    require("lspconfig")[server].setup(config)
                end,
            },
        })
    end,
}
