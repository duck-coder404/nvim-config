return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        "nvim-telescope/telescope-file-browser.nvim",
        'nvim-lua/plenary.nvim',
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
        "nvim-telescope/telescope-ui-select.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("telescope").setup({
            extensions = {
                file_browser = {
                    hijack_netrw = true,
                    hidden = true,
                }
            },
        })

        require("telescope").load_extension("ui-select")
        require("telescope").load_extension("file_browser")
    end,
}
