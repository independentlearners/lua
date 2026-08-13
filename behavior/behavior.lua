local function clear()
	local t = require("lua.teks.teks")
	print(t.halo .. t.da)
	for k, v in pairs(t) do
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
