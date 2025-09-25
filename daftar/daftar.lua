local t = require("lua.teks.teks")

local function tab(fn, arg)
  fn(arg)
end

local function tabel(d)
print(t.halo .. t.da)
  for k, v in pairs(d) do
    print(t.teks)
    local i = io.read()
    if i == "" then
      print(k .. " = " .. v)
    else
      print(t.vr)
      break
    end
  end
end
--tab(tabel, t)
--return function()
  --tabel(t)
--end
local x = function()
tabel(t)
end
return x
