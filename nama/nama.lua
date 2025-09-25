local v = require("lua.teks.teks") 

-- Array dengan indeks numerik (1-based indexing)
local function nm()
  local colors = {"Neovim", "Lua Programming", "Halo Dunia"}

  while true do
    print(v.awalan)
    local x = tonumber(io.read())

    if x == nil then
      print(v.pesanPengecekan, v.program)
      break
    else
      if x >= 1 and x <= #colors then
        -- tampilkan pilihan yang ada
        print(v.warna, colors[x])
      elseif x > #colors then
        os.execute("clear")
        print(v.baru)
        local i = io.read()        -- ambil string baru
        table.insert(colors, i)    -- tambahkan ke akhir array
        print(v.berhasil, i,
              "\n" .. v.panjang .. #colors,
              "\n" .. string.rep("-", 50))

        -- tampilkan semua isi tabel setelah penambahan
        print("Daftar Semua:")
        for idx, val in ipairs(colors) do
          print(idx .. " -> " .. val)
        end
      else
        print(v.pesanPengecekan, v.tekan, x)
      end
    end

    print(v.pesan)
    local y = tostring(io.read())
    if y ~= "" then
      print(v.tekan, y, "untuk keluar", v.salam)
      break
    else
      os.execute("clear")
      print(v.login)
    end
  end
end

return nm

