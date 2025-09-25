-- Entry point program
-- Memanggil resource teks
--local lfs = require("lfs")
--lfs.chdir(os.getenv("HOME"))   -- HOME = variabel lingkungan
local T = require("lua.teks.teks")
local tampilkanVariabel = require("lua.daftar.daftar")
local kal = require("lua.kalkulator.kalkulator")
local na = require("lua.nama.nama")
local vo = require("lua.for.for")
local pro = require("lua.profil.profil")
local tambahSendiri = require("lua.tambah.tambah")
local vor = require("lua.vor.vor")

os.execute("clear")
print(T.i)

while true do
  print(T.stret
  .. "\n"
  .. T.pilih
  .. "\n\n" 
  .. T.judul)
  local i = tonumber(io.read())

  if i == nil then
    os.execute("clear")
    print(T.nomor)
    break
  elseif i == 1 then
    os.execute("clear")
    print(T.kalkulator)
    kal()
  elseif i == 2 then
    os.execute("clear")
    print(T.tabelWarna)
    na()
  elseif i == 3 then
    os.execute("clear")
    vo()
  elseif i == 4 then
    os.execute("clear")
    pro()
  elseif i == 5 then
    os.execute("clear")
    tampilkanVariabel()
  elseif i == 6 then
    os.execute("clear")
    tambahSendiri()
  elseif i == 7 then
    os.execute("clear")
    vor()

  else
    os.execute("clear")
    print(T.salah
    .. "\n"
    .. T.stret
    .. "\n"
    .. T.pesan3)
    local a = io.read()

    if a == "y" then
      os.execute("clear")
      print(T.pesan7, a, T.lanjut)
    elseif a == " " then
      os.execute("clear")
      print(T.pesan7, "spasi:", T.lanjut)
    elseif a == "" then
      os.execute("clear")
      print(T.pesan7, "enter:", T.lanjut)
    else
      os.execute("clear")
      os.execute('bash -c "cd ~ && pwd"') -- Jika tidak kembali ke home, coba aktifkan ini!
      print(T.pesan7
      .. " "
      -- .. lfs.currentdir()
      .. a
      .. " "
      .. T.henti
      .. "\n"
      .. T.pesan4)
      break
    end
  end
end

