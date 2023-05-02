local fb_actions = require "telescope".extensions.file_browser.actions

require("telescope").setup {
  extensions = {
    file_browser = {
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
          ["å"] = fb_actions.create,  --⌥c
          ["®"] = fb_actions.rename,  --⌥r
          ["∂"] = fb_actions.remove,  --⌥d
          ["µ"] = fb_actions.move,  --⌥m
          ["˙"] = fb_actions.toggle_hidden,  --⌥h
        },
        -- ["n"] = {
          -- your custom normal mode mappings
        -- },
      },
    },
  },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "\\e",
  ":Telescope file_browser path=%:p:h select_buffer=true",
  { noremap = true }
)
