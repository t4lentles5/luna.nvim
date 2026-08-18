local Util = require("luna.util")

---@class Palette
local palette = {
  bg = "#f0f0f0",
  bg_alt = "#e0e0e0",
  bg_soft = "#e8e8e8",
  bg_plum = "#f0e0e8",
  bg_delete = "#ffd0d0",
  surface = "#cccccc",
  selection = "#b0c0d0",
  border = "#bbbbbb",
  float_bg = "#e0e0e0",
  grey_warm = "#a09090",
  comment = "#888888",
  grey = "#666666",
  grey_mid = "#555555",
  grey_light = "#444444",
  grey_pale = "#333333",
  silver = "#888888",
  fg = "#222222",
  fg_bright = "#000000",
  cream = "#d0c0b0",
  black = "#000000",
  white = "#ffffff",
  keyword = "#b85522",
  func = "#1866ad",
  type = "#8645b0",
  string = "#3f7a26",
  signal = "#9a4411",
  error = "#c42121",
  warning = "#b07b1e",
  info = "#365ba1",
  hint = "#8a5840",
  ok = "#2e8f46",
  none = "NONE",
}

palette.number = palette.keyword
palette.cursor_line = { bg = "#e5e5e5" }
palette.cursor_line_nr = { fg = palette.silver }
palette.line_nr = Util.blend_bg(palette.grey_warm, 0.45, palette.bg)

palette.git = {
  add = { fg = palette.ok, bg = Util.blend_bg(palette.ok, 0.14, palette.bg) },
  delete = { fg = palette.error, bg = palette.bg_delete },
  change = { fg = palette.signal, bg = Util.blend_bg(palette.signal, 0.10, palette.bg) },
  text = { fg = palette.fg_bright, bg = Util.blend_bg(palette.signal, 0.30, palette.bg) },
}

palette.diag = {
  error = palette.error,
  warning = palette.warning,
  info = palette.info,
  hint = palette.hint,
  ok = palette.ok,
}

palette.visual = palette.border
palette.float_border = palette.border

return palette
