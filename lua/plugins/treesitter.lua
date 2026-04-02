return {
    {
		"nvim-treesitter/nvim-treesitter-context",
		after = "nvim-treesitter",
		config = function()
			require("treesitter-context").setup({
				enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
				multiwindow = false, -- Enable multiwindow support.
				max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
				min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
				line_numbers = true,
				multiline_threshold = 20, -- Maximum number of lines to show for a single context
				trim_scope = "outer", -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
				mode = "cursor", -- Line used to calculate context. Choices: 'cursor', 'topline'
				-- Separator between context and content. Should be a single character string, like '-'.
				-- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
				separator = nil,
				zindex = 20, -- The Z-index of the context window
				on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
			})
		end,
	},
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
		    "nvim-treesitter/nvim-treesitter-textobjects",
		},
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter").setup({
                install_dir = vim.fn.stdpath('data') .. '/site'
            })
            require('nvim-treesitter.configs').setup({
            -- A directory to install the parsers into.
            -- If this is excluded or nil parsers are installed
            -- to either the package dir, or the "site" dir.
            -- If a custom path is used (not nil) it must be added to the runtimepath.
            parser_install_dir = vim.fn.stdpath('data') .. '/site',

            -- A list of parser names, or "all"
            ensure_installed = { "c", "lua", "rust", "python", "zig" },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            auto_install = false,

            -- List of parsers to ignore installing (for "all")
            -- ignore_install = { "javascript" },

            highlight = {
              -- `false` will disable the whole extension
              enable = true,

              -- list of language that will be disabled
              -- disable = { "c", "rust" },

              -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
              -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
              -- Using this option may slow down your editor, and you may see some duplicate highlights.
              -- Instead of true it can also be a list of languages
              additional_vim_regex_highlighting = false,
            },
          })
      end
      }
}
