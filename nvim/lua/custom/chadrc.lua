-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "tokyonight",
}

M.plugins = {
  user = {
    ["NvChad/ui"] = {
      config = function()
        require "nvchad_ui.tabufline.lazyload"(require("nvchad_ui.config").tabufline)
      end,
    },
    ["glepnir/galaxyline.nvim"] = {
      config = function()
        require "statusline"
      end,
    }
  }
}

return M
