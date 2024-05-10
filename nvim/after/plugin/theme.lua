local u = require("util")

local colors = {
  bg = "#282A36",
  fg = "#F8F8F2",
  selection = "#44475A",
  comment = "#6272A4",
  red = "#FF5555",
  orange = "#FFB86C",
  yellow = "#F1FA8C",
  green = "#50fa7b",
  purple = "#BD93F9",
  cyan = "#8BE9FD",
  pink = "#FF79C6",
  bright_red = "#FF6E6E",
  bright_green = "#69FF94",
  bright_yellow = "#FFFFA5",
  bright_blue = "#D6ACFF",
  bright_magenta = "#FF92DF",
  bright_cyan = "#A4FFFF",
  bright_white = "#FFFFFF",
  menu = "#21222C",
  visual = "#3E4452",
  gutter_fg = "#4B5263",
  nontext = "#3B4048",
  white = "#ABB2BF",
  black = "#191A21",
}

local dracula = require("dracula")
dracula.setup({
  overrides = {
    DiffAdd = { bg = u.darken(colors.bright_green, 0.15) },
    DiffDelete = { fg = colors.bright_red },
    DiffChange = { bg = u.darken(colors.comment, 0.15) },
    DiffText = { bg = u.darken(colors.comment, 0.50) },
    illuminatedWord = { bg = u.darken(colors.comment, 0.65) },
    illuminatedCurWord = { bg = u.darken(colors.comment, 0.65) },
    IlluminatedWordText = { bg = u.darken(colors.comment, 0.65) },
    IlluminatedWordRead = { bg = u.darken(colors.comment, 0.65) },
    IlluminatedWordWrite = { bg = u.darken(colors.comment, 0.65) },
  },
})
