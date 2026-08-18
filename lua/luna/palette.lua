if vim.o.background == "light" then
  return require("luna.palette_light")
else
  return require("luna.palette_dark")
end
