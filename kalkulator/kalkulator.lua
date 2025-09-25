-- KALKULATOR
-- Tujuan :
-- 1. Program meminta input operator dan angka
-- 2. Setiap pemilihan operator menyertakan pesan konfirmasi
-- 3. Jika input bukan angka, program keluar
-- 4. Jika pembagian dengan nol, program keluar
-- 5. Setiap sesi input dibersihkan layarnya agar rapi
local T = require("lua.teks.teks")
-- ========================
-- AWAL PROGRAM
local function kalkulator()
while true do

  -- Input Operator
  print(T.pesan0)
  local opr = io.read()

  -- Pesan konfirmasi operator
  if opr == "+" then
    os.execute("clear")
    print(T.plus)
      print(string.rep("-", 50))
  elseif opr == "-" then
    os.execute("clear")
    print(T.neg)
      print(string.rep("-", 50))
  elseif opr == "*" then
    os.execute("clear")
    print(T.ktr)
      print(string.rep("-", 50))
  elseif opr == "/" then
    os.execute("clear")
    print(T.bag)
      print(string.rep("-", 50))
  else
    os.execute("clear")
    print(T.salah, T.pesan6)
    break
  end

  print(T.pesan1)
  local i = tonumber(io.read())

  print(T.pesan2)
  local x = tonumber(io.read())

  -- Validasi input angka
  if i == nil or x == nil then
    os.execute("clear")
    print(T.nomor)
    print(string.rep("-", 50))
    break
  end

  -- Alur kontrol operasi
  if opr == "+" then
    print(T.tambah, i + x)
      print(string.rep("-", 50))
  elseif opr == "-" then
    print(T.kurang, i - x)
      print(string.rep("-", 50))
  elseif opr == "*" then
    print(T.kali, i * x)
      print(string.rep("-", 50))
  elseif opr == "/" then
    if x == 0 then
      os.execute("clear")
      print(T.pesan5, T.pesan6)
      print(string.rep("-", 50))
      break
    else
      print(T.bagi, i / x)
    end
  end

  -- Pesan konfirmasi keluar/lanjut
  print(T.pesan3)
  local y = io.read()

  if y == "y" then
    os.execute("clear")
    print(T.pesan7, y, T.lanjut)
      print(string.rep("-", 50))
  elseif y == " " then
    os.execute("clear")
    print(T.pesan7, "spasi:", T.lanjut)
      print(string.rep("-", 50))
  elseif y == "" then
    os.execute("clear")
    print(T.pesan7, "enter:", T.lanjut)
      print(string.rep("-", 50))
  else
    print(T.pesan7, y, T.henti)
    print(T.pesan4)
    print(string.rep("-", 50))
    break
  end
end -- akhir while
end
return kalkulator
