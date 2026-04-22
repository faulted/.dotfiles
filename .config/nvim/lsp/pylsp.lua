-- ~/.config/nvim/after/lsp/pylsp.lua
-- Extends the base pylsp config from nvim-lspconfig.
-- Only overrides what we need; everything else inherits from the plugin defaults.

---@type vim.lsp.Config
return {
  settings = {
    pylsp = {
      configurationSources = { 'flake8' },
      plugins = {
        -- Completion & navigation
        jedi_completion = {
          enabled = true,
          include_params = true,
          fuzzy = false,
        },
        jedi_definition = {
          enabled = true,
          follow_imports = true,
          follow_builtin_imports = true,
        },
        jedi_hover      = { enabled = true },
        jedi_references = { enabled = true },
        jedi_signature_help = { enabled = true },
        jedi_symbols    = { enabled = true, all_scopes = true },
        jedi_type_definition = { enabled = true },

        -- Linting: flake8 (matches black's line length; ignores black-incompatible rules)
        flake8 = {
          enabled = true,
          maxLineLength = 88,
          ignore = { 'E203', 'W503' },
        },

        -- Linting: pylint
        pylint = {
          enabled = true,
          args = {},
        },

        -- Formatting & type checking are handled by external plugins:
        --   python-lsp-black  → exposes `black` plugin
        --   pylsp-mypy        → exposes `pylsp_mypy` plugin
        black = {
          enabled = true,
          line_length = 88,
        },
        pylsp_mypy = {
          enabled = true,
          live_mode = false,
        },

        -- Disable everything we're not using
        pycodestyle = { enabled = false },
        pyflakes    = { enabled = false },
        autopep8    = { enabled = false },
        yapf        = { enabled = false },
        mccabe      = { enabled = false },
        pydocstyle  = { enabled = false },
        rope_autoimport = { enabled = false },
        rope_completion = { enabled = false },
      },
    },
  },
}
