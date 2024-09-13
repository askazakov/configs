hs.loadSpoon("ShiftIt")
spoon.ShiftIt:bindHotkeys({})
spoon.ShiftIt:setWindowCyclingSizes({ 50, 33, 67 }, { 50 })

local hyper = {"ctrl", "alt", "cmd"}
local hyper_shift = {table.unpack(hyper)}
table.insert(hyper_shift, "shift")
print(table.unpack(hyper))
print(table.unpack(hyper_shift))

-- https://github.com/msolomon/griddle
hs.loadSpoon("Griddle")
spoon.Griddle:bindHotkeys({enter = {hyper, "o"}})
spoon.Griddle:start()

local function scrollVertically(y)
  hs.eventtap.scrollWheel({0, y}, {})
end

hs.hotkey.new(hyper, "u",
  function() scrollVertically(3) end
):enable()

hs.hotkey.new(hyper_shift, "u",
  function() scrollVertically(9) end
):enable()

hs.hotkey.new(hyper, "i",
  function() scrollVertically(-3) end
):enable()

hs.hotkey.new(hyper_shift, "i",
  function() scrollVertically(-9) end
):enable()