-- Extends the base pylsp config from nvim-lspconfig.
-- Only overrides what we need; everything else inherits from the plugin defaults.
-- Configuration found below:
-- https://github.com/python-lsp/python-lsp-server/blob/develop/CONFIGURATION.md

---@type vim.lsp.Config
return {
    settings = {
        pylsp = {
            configurationSources = { 'flake8' },
            plugins = {
                -- Linting: flake8 (matches black's line length; ignores black-incompatible rules)
                flake8 = {
                    enabled = true,
                    maxLineLength = 120,
                    ignore = { 'E203', 'W503' },
                },

                -- Completion & navigation
                jedi_completion = {
                    enabled = true,
                    include_params = true,
                    include_class_objects = true,
                    inlcude_function_objects = true,
                },
                jedi_definition = {
                    enabled = true,
                    follow_imports = true,
                    follow_builtin_imports = true,
                },
                jedi_hover = { enabled = true },
                jedi_references = { enabled = true },
                jedi_signature_help = { enabled = true },
                jedi_symbols = { enabled = true, all_scopes = true },
                jedi_type_definition = { enabled = true },

                -- Disable everything we're not using
                pylint = { enabled = false },
                mccabe = { enabled = false },
                preload = { enabled = false},
                pycodestyle = { enabled = false },
                pydocstyle = { enabled = false },
                pyflakes = { enabled = false },
            },
        },
    },
}
