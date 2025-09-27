local t = require("lua.teks.teks")

local function vor()
	print(t.halo .. " Pemutaran angka\n" .. t.angka1 .. t.pesan1)

	while true do
		local i = tonumber(io.read())
		print(t.pesan2)

		local x = tonumber(io.read())
		os.execute("clear")

		if i == nil or x == nil then
			print(t.nomor)
			break
		end
		if i == 1 and x > 1 then
			for i = 1, x do
				os.execute("clear")
				print(t.p, i)
			end

			print("\n" .. t.asd .. "(" .. x .. ")" .. "\n" .. string.rep("-", 40) .. "\n" .. t.pesan1)
		elseif i >= 1 and x > 1 then
			print(t.ber .. "\n" .. t.pesan1)
		else
			print(t.ulang .. "\n" .. t.pesan1)
		end
	end
end
return vor
