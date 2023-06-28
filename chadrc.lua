---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

-- Determines the preferred placement of the mason.nvim bin directory in your PATH. Can be one of:
-- - "prepend" (default, Mason's bin location is put first in PATH)
-- - "append" (Mason's bin location is put at the end of PATH)
-- - "skip" (doesn't modify PATH)
---@type '"prepend"' | '"append"' | '"skip"'
M.place_mason_bin = "prepend"

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
