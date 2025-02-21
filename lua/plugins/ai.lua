return {
    'codota/tabnine-nvim',
    build = "./dl_binaries.sh",

    config = function()
        require('tabnine').setup({
            accept_keymap = "<Tab>",
            debounce_ms = 800,
            suggestion_color = { gui = "#00ff00", cterm = 244 },
            exclude_filetypes = { "TelescopePrompt", "NvimTree" },
            log_file_path = nil, -- absolute path to Tabnine log file
            ignore_certificate_errors = false,
            -- workspace_folders = {
            --   paths = { "/your/project" },
            --   get_paths = function()
            --       return { "/your/project" }
            --   end,
            -- },
        })
    end
}
