return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "SmiteshP/nvim-navic",
        "neovim/nvim-lspconfig",
        "nvim-web-devicons"
    },

    config = function ()
        local navic = require("nvim-navic")
        navic.setup()
        require('lualine').setup {
        options = {
            icons_enabled = true,
            theme = 'auto',
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
            disabled_filetypes = {},
            always_divide_middle = true,
            globalstatus = false,
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {'filename'},
            lualine_x = {
                    {
                        function()
                            return navic.get_location()
                        end,
                        cond = function()
                            return navic.is_available()
                        end
                    }
            },
            lualine_y = {'encoding', 'fileformat', 'filetype'},
            lualine_z = {'progress', 'location'}
        },
        inactive_sections = {
              lualine_a = {},
              lualine_b = {},
              lualine_c = {'filename'},
              lualine_x = {},
              lualine_y = {},
              lualine_z = {}
        },
        tabline = {},
        extensions = {},
        }
    end
}
