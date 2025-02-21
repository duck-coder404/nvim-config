return {
    'mrcjkb/rustaceanvim',
    lazy = false, -- This plugin is already lazy
    server = {
        default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
                timeout_ms = 30000,
                cargo = {
                    loadOutDirsFromCheck = true,
                },
                checkOnSave = {
                    command = "clippy",
                },
            },
        },
    },
}
