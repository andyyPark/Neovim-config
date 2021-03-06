if !exists('g:toggleterm')
    finish
endif

lua << EOF
local M = {}

function M.config()
  local status_ok, toggleterm = pcall(require, "toggleterm")
  if status_ok then
    toggleterm.setup(require("core.utils").user_plugin_opts("plugins.toggleterm", {
      size = 10,
      open_mapping = [[<c-\>]],
      shading_factor = 2,
      direction = "float",
      float_opts = {
        border = "curved",
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    }))
  end
end

return M
EOF
