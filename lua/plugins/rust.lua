return {
    'rust-lang/rust.vim',
    'mrcjkb/rustaceanvim',
    lazy = false, -- This plugin is already lazy
    server = {
        default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
                cargo = {
                    allFeatures = true,
                    loadOutDirsFromCheck = true,
                    buildScripts = {
                        enable = true,
                    },
                },
                -- Add clippy lints for Rust if using rust-analyzer
                checkOnSave = true,
                -- Enable diagnostics if using rust-analyzer
                diagnostics = {
                    enable = true,
                },
                procMacro = {
                    enable = true,
                    ignored = {
                        ["async-trait"] = { "async_trait" },
                        ["napi-derive"] = { "napi" },
                        ["async-recursion"] = { "async_recursion" },
                    },
                },
            },
        },
    },
}
