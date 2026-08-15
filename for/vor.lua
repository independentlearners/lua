local t = require("lua.teks.teks")
local clear = require("lua.behavior.clear")

print(t.halo, "perulangan for\n", t.pesan1)
local i = tonumber(io.read())
print(t.pesan2)
local x = tonumber(io.read())

while true do
	if i == nil and x == nil then
		print(t.nomor)
		break
	else
		if i == 1 and x > 1 then
			for i = 1, x do
				print(t.per, x, "\n", t.vor)
				clear()
			end
		elseif i >= 1 and x > 1 then
			print(t.salah)
		else
			print(t.ulang)
		end
	end
end
