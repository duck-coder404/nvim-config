return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,    -- load immediately
    priority = 1000, -- high priority to load early
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",          -- Set the flavour; options: latte, frappe, macchiato, mocha.
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            styles = {
                treesitter = true,
                native_lsp = {
                    enabled = true,
                },
                integrations = {
                    cmp = true,
                    nvimtree = {
                        enabled = true,
                        show_root = true,
                    },
                    telescope = true,
                },
            },
        })
        -- Finally set the colorscheme
        vim.cmd("colorscheme catppuccin")
    end,
}
