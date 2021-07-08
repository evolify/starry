local lush = require('lush')
local main = require("starry.main")
local colors = require("starry.colors")
local hsl = lush.hsl

local theme = lush(function()
  return {
    NvimTreeCursorLine {main.CursorLine},
    NvimTreeRootFolder {fg = main.Normal.fg, gui = "bold"},

    -- Bufferline barbar.nvim
    -- Tab {bg = main.StarryBg.bg.li(20)},
    -- BufferTabpages {Tab},
    
    -- BufferLineBufferSelected {fg = colors.bright_orange},

    --[[ BufferLineSeparator {BufferInactive},
    BufferLineSeparatorSelected {BufferLineSeparator}, ]]
    BufferLineIndicatorSelected {fg = colors.bright_orange},

    -- Bufferline
    BufferLineFill {bg = '#555555'},

    -- Telescope
    -- TelescopeSelection {bg = main.CursorLine.bg},
    -- TelescopeNormal {main.NormalFloat},
    -- TelescopePreviewNormal {TelescopeNormal, bg = TelescopeNormal.bg.li(10)},
    -- TelescopeBorder {TelescopeNormal, fg = TelescopeNormal.bg},
    -- TelescopePreviewBorder {TelescopePreviewNormal, fg = TelescopePreviewNormal.bg},
    -- TelescopePromptBorder {TelescopeBorder, fg = main.Identifier.fg},
    --
    -- Gitsign
    -- GitSignsCurrentLineBlame {fg = colors.white.darken(50)} 
  }
end)
return theme


