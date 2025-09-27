local t = require("lua.teks.teks")

local function vor()
	print(t.halo .. " Perulangan For\n" .. "Angka 1 untuk memulai, berikutnya untuk mengulang\n" .. t.pesan1)

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
				print(t.per, i)
			end

			print("\n\n\n" .. t.pesan7 .. " " .. i .. " dan " .. x)
			print(t.vor .. "\n" .. string.rep("-", 40))
			print("\n" .. t.pesan1)
		elseif i >= 1 and x > 1 then
			print(t.ber .. "\n" .. t.pesan1)
		else
			print(t.ulang .. "\n" .. t.pesan1)
		end
	end
end
return vor
