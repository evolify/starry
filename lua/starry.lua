local lush = require("lush")
local main = require("starry.main")
local plugins = require("starry.plugins")
local languages = require("starry.languages")

local specs = { main, plugins, languages }

local spec = lush.merge(specs)

return spec
