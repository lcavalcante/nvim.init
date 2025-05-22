return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.7',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },

    config = function()
        require('telescope').setup({})
        require('telescope').load_extension('fzf')
        
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>fs', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>ft', builtin.tags, {})
    end
}

