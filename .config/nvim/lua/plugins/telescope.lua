return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', function()
            builtin.find_files({ preview_title = "File Preview" })
        end, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', function()
            builtin.live_grep({ preview_title = "Grep Preview" })
        end, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', function()
            builtin.buffers({ preview_title = "Buffer Preview" })
        end, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', function()
            builtin.help_tags({ preview_title = "Help Preview" })
        end, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>fd', function()
            builtin.find_files({
                prompt_title = "Find Directory",
                find_command = { "find", ".", "-type", "d", "-not", "-path", "*/.git/*" },
                preview_title = "Directory Preview",
                attach_mappings = function(prompt_bufnr, map)
                    local actions = require('telescope.actions')
                    local action_state = require('telescope.actions.state')
                    actions.select_default:replace(function()
                        actions.close(prompt_bufnr)
                        local selection = action_state.get_selected_entry()
                        vim.cmd("Explore " .. selection.value)
                    end)
                    return true
                end,
            })
        end, { desc = 'Telescope find directory' })
    end
}
