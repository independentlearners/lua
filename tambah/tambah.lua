local T = require("lua.teks.teks")

-- Fungsi ini dibuat khsusus menambahkan dirinya sendiri
function buatPenambah(jumlahTambah)
  local penambahKhusus = function(angkaAwal)
                           return angkaAwal + jumlahTambah
                         end
  return penambahKhusus -- Mengembalikan sebuah function
end

  return function()
print(T.halo
.. T.j
.. "\n"
.. T.ad)
while true do
print(T.ank)
local x = tonumber(io.read())

if x == nil  then
--tostring(type(x))
--type(tostring(x))
print(T.pesan7 
.. " selain angka\n"
.. T.pesanPengecekan
.. "\n"
.. T.program)

break
else

local tambahSendiri = buatPenambah(x) 
print(T.tambah .. tambahSendiri(x))

end
end
end
