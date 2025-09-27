local T = require("lua.teks.teks")

local function panggil()
	os.execute("clear")
	print(T.halo .. "Pencatatan Profil")

	print(T.inputNama)
	local nama = io.read() or ""

	print(T.inputAlamat)
	local kota = io.read() or ""

	-- Validasi: hanya huruf
	if not nama:match("^[A-Za-z]+$") or not kota:match("^[A-Za-z]+$") then
		os.execute("clear")
		print(T.pesanPengecekan .. "\n" .. T.program)
		return
	end

	local a = "Nama   : " .. nama
	local b = "Alamat : " .. kota
	local c = "\n" .. a .. "\n" .. b

	os.execute("clear")
	print(T.bb, c)
	print(T.salam)
end

return panggil
