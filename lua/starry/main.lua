local lush = require('lush')
local hsl = lush.hsl
local convert = require("lush.hsl.convert")
local colors = require("starry.colors")
-- local styles = require("starry.config").styles
local utils = require("starry.utils")

local styles = {
  italic = "italic",
  bold = "bold",
  underline = "underline",
  inverse = "inverse",
  undercurl = "undercurl",
  invert_signs = "",
  invert_selection = "inverse",
  invert_tabline = "",
  italic_comments = "italic",
  italic_strings = "NONE",
}

-- options (dark mode by default)
local black = colors.black
local white = colors.white

local bg0 = colors.dark0
local bg1 = colors.dark1
local bg2 = colors.dark2
local bg3 = colors.dark3
local bg4 = colors.dark4

local fg0 = colors.light0
local fg1 = colors.light1
local fg2 = colors.light2
local fg3 = colors.light3
local fg4 = colors.light4

local red = colors.bright_red
local green = colors.bright_green
local yellow = colors.bright_yellow
local blue = colors.bright_blue
local purple = colors.bright_purple
local aqua = colors.bright_aqua
local orange = colors.bright_orange
local gray = colors.gray

local bg = vim.o.background
if bg == nil then
  bg = "dark"
  vim.o.background = bg
end

-- swap colors if light mode
if bg == "light" then
  bg0 = colors.light0
  bg1 = colors.light1
  bg2 = colors.light2
  bg3 = colors.light3
  bg4 = colors.light4
  fg0 = colors.dark0
  fg1 = colors.dark1
  fg2 = colors.dark2
  fg3 = colors.dark3
  fg4 = colors.dark4
  red = colors.faded_red
  green = colors.faded_green
  yellow = colors.faded_yellow
  blue = colors.faded_blue
  purple = colors.faded_purple
  aqua = colors.faded_aqua
  orange = colors.faded_orange
end

-- handle light/dark contrast settings
local contrast = vim.g["starry_contrast_" .. bg]
if contrast == "hard" then
  bg0 = colors[bg .. "0_hard"]
elseif contrast == "soft" then
  bg0 = colors[bg .. "0_soft"]
end

-- extending colors table with basic names for easy customization in g:starry_* options
colors.bg = bg
colors.bg0 = bg0
colors.bg1 = bg1
colors.bg2 = bg2
colors.bg3 = bg3
colors.bg4 = bg4
colors.fg = fg
colors.fg0 = fg0
colors.fg1 = fg1
colors.fg2 = fg2
colors.fg3 = fg3
colors.fg4 = fg4
colors.red = red
colors.green = green
colors.yellow = yellow
colors.blue = blue
colors.purple = purple
colors.aqua = aqua
colors.orange = orange

local hls_cursor = utils.get_color_from_var(vim.g.starry_hls_cursor, orange, colors)
local hls_highlight = utils.get_color_from_var(vim.g.starry_hls_highlight, yellow,
                                               colors)
local number_column = utils.get_color_from_var(vim.g.starry_number_column, nil, colors)
local color_column = utils.get_color_from_var(vim.g.starry_color_column, bg1, colors)
local vert_split = utils.get_color_from_var(vim.g.starry_vert_split, bg0, colors)
local tabline_sel = utils.get_color_from_var(vim.g.starry_tabline_sel, green, colors)
local sign_column = utils.get_color_from_var(vim.g.starry_sign_column, "NONE", colors)

local improved_strings_fg = fg1
local improved_strings_bg = bg1
local improved_strings_gui = styles.italic_strings

local special_string_fg = orange
local special_string_bg = bg1
local special_string_gui = styles.italic_strings

if not utils.tobool(vim.g.starry_improved_strings) then
  improved_strings_fg = green
  improved_strings_bg = nil
  special_string_bg = nil
  special_string_gui = nil
end

-- neovim terminal mode colors
vim.g.terminal_color_0 = convert.hsl_to_hex(bg0)
vim.g.terminal_color_8 = convert.hsl_to_hex(gray)
vim.g.terminal_color_1 = convert.hsl_to_hex(colors.neutral_red)
vim.g.terminal_color_2 = convert.hsl_to_hex(red)
vim.g.terminal_color_10 = convert.hsl_to_hex(green)
vim.g.terminal_color_3 = convert.hsl_to_hex(colors.neutral_yellow)
vim.g.terminal_color_11 = convert.hsl_to_hex(yellow)
vim.g.terminal_color_4 = convert.hsl_to_hex(colors.neutral_blue)
vim.g.terminal_color_12 = convert.hsl_to_hex(blue)
vim.g.terminal_color_5 = convert.hsl_to_hex(colors.neutral_purple)
vim.g.terminal_color_13 = convert.hsl_to_hex(purple)
vim.g.terminal_color_6 = convert.hsl_to_hex(colors.neutral_aqua)
vim.g.terminal_color_14 = convert.hsl_to_hex(aqua)
vim.g.terminal_color_7 = convert.hsl_to_hex(fg4)
vim.g.terminal_color_15 = convert.hsl_to_hex(fg1)

-- vim.g.colors_name = "starry"

local table_concat = table.concat


local theme = lush(function()
  return {
      -- Base groups
    StarryFg0 {fg = fg0},
    StarryFg1 {fg = fg1},
    StarryFg2 {fg = fg2},
    StarryFg3 {fg = fg3},
    StarryFg4 {fg = fg4},
    StarryGray {fg = gray},
    StarryBg { bg = bg0},
    StarryBg0 {fg = bg0},
    StarryBg1 {fg = bg1},
    StarryBg2 {fg = bg2},
    StarryBg3 {fg = bg3},
    StarryBg4 {fg = bg4},

    StarryRed {fg = red},
    StarryRedBold {fg = red, gui = styles.bold},
    StarryGreen {fg = green},
    StarryGreenBold {fg = green, gui = styles.bold},
    StarryYellow {fg = yellow},
    StarryYellowBold {fg = yellow, gui = styles.bold},
    StarryBlue {fg = blue},
    StarryBlueBold {fg = blue, gui = styles.bold},
    StarryPurple {fg = purple},
    StarryPurpleBold {fg = purple, gui = styles.bold},
    StarryAqua {fg = aqua},
    StarryAquaBold {fg = aqua, gui = styles.bold},
    StarryOrange {fg = orange},
    StarryOrangeBold {fg = orange, gui = styles.bold},

    StarryRedSign {fg = red, bg = sign_column, gui = styles.invert_signs},
    StarryGreenSign {fg = green, bg = sign_column, gui = styles.invert_signs},
    StarryYellowSign {fg = yellow, bg = sign_column, gui = styles.invert_signs},
    StarryBlueSign {fg = blue, bg = sign_column, gui = styles.invert_signs},
    StarryPurpleSign {fg = purple, bg = sign_column, gui = styles.invert_signs},
    StarryAquaSign {fg = aqua, bg = sign_column, gui = styles.invert_signs},
    StarryOrangeSign {fg = orange, bg = sign_column, gui = styles.invert_signs},

    StarryRedUnderline {gui = styles.undercurl, sp = red},
    StarryGreenUnderline {gui = styles.undercurl, sp = green},
    StarryYellowUnderline {gui = styles.undercurl, sp = yellow},
    StarryBlueUnderline {gui = styles.undercurl, sp = blue},
    StarryPurpleUnderline {gui = styles.undercurl, sp = purple},
    StarryAquaUnderline {gui = styles.undercurl, sp = aqua},
    StarryOrangeUnderline {gui = styles.undercurl, sp = orange},

    ColorColumn {bg = color_column},
    Conceal {fg = blue},
    Cursor {gui = styles.inverse},
    lCursor {Cursor},
    iCursor {Cursor},
    vCursor {Cursor},
    CursorIM {Cursor},
    CursorLine {bg = bg1},
    CursorColumn {CursorLine},
    Directory {StarryRedBold, fg = aqua},
    DiffAdd {fg = green, bg = bg0, gui = styles.invert_signs},
    DiffChange {fg = aqua, bg = bg0, gui = styles.invert_signs},
    DiffDelete {fg = red, bg = bg0, gui = styles.invert_signs},
    DiffText {fg = yellow, bg = bg0, gui = styles.invert_signs},
    ErrorMsg {fg = bg0, bg = red, gui = styles.bold},
    VertSplit {fg = StarryBg.bg.li(10), bg = "NONE"},
    Folded {fg = gray, bg = bg1, gui = styles.italic_strings},
    FoldColumn {fg = gray, bg = bg1},
    SignColumn {bg = sign_column},
    IncSearch {fg = hls_cursor, bg = bg0, gui = styles.inverse},
    LineNr {fg = bg4, bg = number_column},
    CursorLineNr {fg = fg1, bg = bg1},
    MatchParen {bg = bg3, gui = styles.bold},
    ModeMsg {StarryYellowBold},
    MoreMsg {StarryYellowBold},
    NonText {StarryBg2},
    Normal {bg = 'NONE', fg = fg1},
    NormalFloat {Normal, bg = StarryBg.bg.darken(20)},
    FloatBorder {NormalFloat, fg = NormalFloat.bg.li(20)},
    NormalNC {Normal},
    Pmenu {fg = fg1, bg = bg2},
    PmenuSel {fg = bg2, bg = blue, gui = styles.bold},
    PmenuSbar {bg = bg2},
    PmenuThumb {bg = bg4},
    Question {StarryOrangeBold},
    QuickFixLine {fg = bg0, bg = yellow, gui = styles.bold},
    Search {fg = hls_highlight, bg = bg0, gui = styles.inverse},
    SpecialKey {StarryFg4},
    SpellRare {StarryPurpleUnderline},
    SpellBad {StarryRedUnderline},
    StatusLine {fg = bg1, bg = fg1, gui = styles.inverse},
    StatusLineNC {fg = black, bg = fg4, gui = styles.inverse},
    TabLineFill {fg = bg4, bg = bg1, gui = styles.invert_tabline},
    TabLine {fg = bg4, bg = bg1, gui = styles.invert_tabline},
    TabLineSel {fg = tabline_sel, bg = bg1, gui = styles.invert_tabline},
    Title {StarryGreenBold},
    Visual {bg = bg3, gui = styles.invert_selection},
    VisualNOS {Visual},
    WarningMsg {StarryRedBold},
    WildMenu {fg = blue, bg = bg2, gui = styles.bold},
    Constant {StarryPurple},
    Special {fg = special_string_fg, bg = special_string_bg, gui = special_string_gui},
    String {
      fg = improved_strings_fg,
      bg = improved_strings_bg,
      gui = improved_strings_gui,
    },
    Character {StarryPurple},
    Number {StarryPurple},
    Boolean {StarryPurple},
    Float {StarryPurple},
    Identifier {StarryBlue},
    Function {StarryGreenBold},
    Statement {StarryRed},
    Conditional {StarryRed},
    Repeat {StarryRed},
    Label {StarryRed},
    Exception {StarryRed},
    Keyword {StarryRed},
    Operator {StarryFg1},
    PreProc {StarryAqua},
    Include {StarryAqua},
    Define {StarryAqua},
    Macro {StarryAqua},
    PreCondit {StarryAqua},
    Type {StarryYellow},
    StorageClass {StarryOrange},
    Structure {StarryAqua},
    Typedef {StarryYellow},
    SpecialChar {StarryRed},
    Tag {StarryAquaBold},
    Delimiter {Special},
    Comment {fg = gray, gui = styles.italic_comments},
    Debug {StarryRed},
    Underlined {fg = blue, gui = styles.underline},
    Bold {gui = styles.bold},
    Italic {gui = styles.italic},
    Ignore {},
    Error {StarryRed, gui = table_concat({styles.bold, styles.underline}, ",")},
    Todo {fg = fg0, gui = table_concat({styles.bold, styles.italic_comments}, ",")},
    diffAdded {StarryGreen},
    diffRemoved {StarryRed},
    diffChanged {StarryAqua},
    diffFile {StarryOrange},
    diffNewFile {StarryYellow},
    diffLine {StarryBlue},
    -- signature
    SignatureMarkText {StarryBlueSign},
    SignatureMarkerText {StarryPurpleSign},
    -- gitcommit
    gitcommitSelectedFile {StarryGreen},
    gitcommitDiscardedFile {StarryRed},
    -- checkhealth
    healthError {fg = bg0, bg = red},
    healthSuccess {fg = bg0, bg = green},
    healthWarning {fg = bg0, bg = yellow},
  }
end)

return theme

