function asd()
if os.date("%Y%m%d") > '20201028' then
 a = io.open("/storage/emulated/0/dropped.xml", "r")
if not a then
gg.alert("⚠️Lisans Bulunamadı⚠️")
os.exit()
else
a = a:read("*a")
end
end
--Süre Pastesi
--Bitiş
gg.alert("🔰𝐕𝐢𝐩 𝐒𝐜𝐫𝐢𝐩𝐭'𝐞 𝐇𝐨ş 𝐠𝐞𝐥𝐝𝐢𝐧🔰","Devam")
gg.alert("🛡️𝐋𝐨𝐛𝐢𝐝𝐞 𝐀𝐧𝐭𝐢-𝐁𝐚𝐧 𝐀ç𝐦𝐚𝐲ı 𝐔𝐧𝐮𝐭𝐦𝐚🛡️","Tamamdır")
gg.toast("💎Iyi Oyunlar💎")
print("𝐅𝐨𝐫𝐰𝐚𝐫𝐝 𝐇𝐚𝐜𝐤 𝐓𝐞𝐚𝐦")
cvd="\n██╗░░░██╗██╗██████╗░\n██║░░░██║██║██╔══██╗\n╚██╗░██╔╝██║██████╔╝\n░╚████╔╝░██║██╔═══╝░\n░░╚██╔╝░░██║██║░░░░░\n░░░╚═╝░░░╚═╝╚═╝░░░░░\n                                                   2.5"
gg.alert(cvd)
function HOME()
SN = gg.choice({
   "🛡️3.Parti Banı Gider🛡️",
   "🛡️Anti-Ban Menü[Lobi]🛡️",
   "💎Safe Menü💎",
   "💀Brutal Menü💀",
   "⚙️Diğer Brutal Menü⚙️",
   "🧱Duvar Hilesi[Oyun]🧱",
   "🎨Renk Hilesi[Oyun]🎨",
   "⏳Fix Yemesine\nKalan Günü Görmek İçin Bas⏳",
   "🛑Çıkış🛑"
	 },nil, "🔰𝐒𝐚𝐟𝐞 𝐕𝐢𝐩 𝐇𝐢𝐥𝐞 𝐌𝐞𝐧ü🔰")
	
if SN == nil then else
if SN==1 then F1() end
if SN==2 then F2() end
if SN==3 then F3() end
if SN==4 then F4() end
if SN==5 then F5() end
if SN==6 then F6() end
if SN==7 then F7() end
if SN==8 then F8() end
if SN==9 then F9() end
end 
  PUBGMH = -1
end

function F1()
--3.parti gider
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.21956299e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getRestults(550292)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("3.Parti Önlendi")
end

function F2()
--antiban menü
saf=gg.choice({
	"🌐Global Anti-Ban[Lobi]🌐",
	"🎎Kore Anti-Ban[Lobi]🎎",
	"🌐Global İzlemeyi Devre Dışı Bırak [Oyun]🌐",
	"🔑OBB Şifreleme[Lobi]🔑",
	"✉️Anti Report✉️",
	"🛡️On-Off[Oyun]🛡️",
	"🚷Kendini Gizle[Lobi]🚷",
	"🔙Geri🔙"
	},nil,"💎Aɳƚι Bαɳ Mҽɳü💎")
	
if saf==1 then
--Anti Ban Online
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.processKill()
  else
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    n = gg.getResultCount()
    jz = gg.getResults(n)
    do
      for i = 1, n do
        gg.addListItems({
          [1] = {
            address = jz[i].address - 252,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 236,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 232,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 72,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 68,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 64,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 30,
            flags = 4,
            freeze = true,
            value = 119
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 130,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 180,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 200,
            flags = 4,
            freeze = true,
            value = 4451
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 300,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 310,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 360,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 450,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 650,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 800,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
      end
    end
  end
  gg.clearResults()
  gg.clearList()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("196864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.searchNumber("196864", gg.TYPE_DWORD)
  gg.getResultsCount()
  gg.getResults(3)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("6,815,758", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.getResults(1)
  gg.addListItems({
    [1] = {
      address = 2949224500,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224516,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224520,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224680,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224684,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224688,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224782,
      flags = 4,
      freeze = true,
      value = 119
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224882,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224932,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224952,
      flags = 4,
      freeze = true,
      value = 4451
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949225052,
      flags = 4,
      freeze = true,
      value = 0
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949225062,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949225112,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949225202,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949225402,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949225552,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.clearList()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135682;144387", gg.TYPE_DWORD)
  gg.refineNumber("135682", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134658;131586", gg.TYPE_DWORD)
  gg.refineNumber("134658", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4096;135682", gg.TYPE_DWORD)
  gg.refineNumber("4096", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("157567", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135938", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135170", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135426", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135212", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134914;262403", gg.TYPE_DWORD)
  gg.refineNumber("134914", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133378;262403", gg.TYPE_DWORD)
  gg.refineNumber("133378", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131330;133634", gg.TYPE_DWORD)
  gg.refineNumber("131330", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131842;132098", gg.TYPE_DWORD)
  gg.refineNumber("131842", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133634", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131331", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("132098", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.processKill()
  else
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    n = gg.getResultCount()
    jz = gg.getResults(n)
    do
      for i = 1, n do
        gg.addListItems({
          [1] = {
            address = jz[i].address - 252,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 236,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 232,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 72,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 68,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 64,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 30,
            flags = 4,
            freeze = true,
            value = 119
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 130,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 180,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 200,
            flags = 4,
            freeze = true,
            value = 4451
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 300,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 310,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 360,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 450,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 650,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 800,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
      end
    end
  end
  gg.clearResults()
  gg.clearList()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("196864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.searchNumber("196864", gg.TYPE_DWORD)
  gg.getResultsCount()
  gg.getResults(3)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("6,815,758", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.getResults(1)
  gg.addListItems({
    [1] = {
      address = 2949224500,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224516,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224520,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224680,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224684,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224688,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224782,
      flags = 4,
      freeze = true,
      value = 119
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224882,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224932,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949224952,
      flags = 4,
      freeze = true,
      value = 4451
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949225052,
      flags = 4,
      freeze = true,
      value = 0
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949225062,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949225112,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949225202,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949225402,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.addListItems({
    [1] = {
      address = 2949225552,
      flags = 4,
      freeze = true,
      value = 70086
    }
  })
  gg.clearList()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135682;144387", gg.TYPE_DWORD)
  gg.refineNumber("135682", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134658;131586", gg.TYPE_DWORD)
  gg.refineNumber("134658", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4096;135682", gg.TYPE_DWORD)
  gg.refineNumber("4096", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("157567", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135938", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135170", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135426", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135212", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134914;262403", gg.TYPE_DWORD)
  gg.refineNumber("134914", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133378;262403", gg.TYPE_DWORD)
  gg.refineNumber("133378", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131330;133634", gg.TYPE_DWORD)
  gg.refineNumber("131330", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131842;132098", gg.TYPE_DWORD)
  gg.refineNumber("131842", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133634", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131331", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("132098", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
gg.alert("🛡️𝐅𝐨𝐫𝐰𝐚𝐫𝐝 𝐇𝐚𝐜𝐤 𝐓𝐞𝐚𝐦 𝐀𝐧𝐭𝐢 𝐁𝐚𝐧🛡️")
end

if saf==2 then
gg.alert("🔰Bu Bölüm üzerinde Hala Çalışılıyor...🔰")
end

if saf==3 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("909391408;808923191::8", gg.TYPE_DWORD)
SPECTATEOFF1=gg.getResults(999)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("909391408", gg.TYPE_DWORD)
SPECTATEOFF2=gg.getResults(999)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.toast("😎Kafan Rahat😎")
end

if saf==4 then
obb=gg.choice({
	"🔐OBB Şifrele[Lobi]🔐",
	"🔓OBB Şifre Çöz [Lobi]🔓",
	"🔙Ana Menü🔙"
	},nil,"👨‍💻OBB Şifreleme👨‍💻")
	
if obb==1 then
gg.clearResults()
	os.rename("/sdcard/emulated/0/Android/obb/com.vng.pubgmobile/main.11090.com.vng.pubgmobile.obb", "/sdcard/emulated/0/Android/obb/com.vng.pubgmobile/main.11090.com.vng.pubgmobile.obbALFA")
	os.rename("/storage/emulated/0/Android/obb/com.vng.pubgmobile/main.11090.com.vng.pubgmobile.obb", "/storage/emulated/0/Android/obb/com.vng.pubgmobile/main.11090.com.vng.pubgmobile.obbALFA")
	os.rename("/mnt/shell/0/emulated/Android/obb/com.vng.pubgmobile/main.11090.com.vng.pubgmobile.obb", "/mnt/shell/0/emulated/Android/obb/com.vng.pubgmobile/main.11090.com.vng.pubgmobile.obbALFA")
	os.rename("/sdcard/emulated/0/Android/obb/com.tencent.ig/main.11090.com.tencent.ig.obb", "/sdcard/emulated/0/Android/obb/com.tencent.ig/main.11090.com.tencent.ig.obbALFA")
	os.rename("/storage/emulated/0/Android/obb/com.tencent.ig/main.11090.com.tencent.ig.obb", "/storage/emulated/0/Android/obb/com.tencent.ig/main.11090.com.tencent.ig.obbALFA")
	os.rename("/mnt/shell/0/emulated/Android/obb/com.tencent.ig/main.11090.com.tencent.ig.obb", "/mnt/shell/0/emulated/Android/obb/com.tencent.ig/main.11090.com.tencent.ig.obbALFA")
	os.rename("/sdcard/emulated/0/Android/obb/com.pubg.krmobile/main.11090.com.pubg.krmobile.obb", "/sdcard/emulated/0/Android/obb/com.pubg.krmobile/main.11090.com.pubg.krmobile.obbALFA")
	os.rename("/storage/emulated/0/Android/obb/com.pubg.krmobile/main.11090.com.pubg.krmobile.obb", "/storage/emulated/0/Android/obb/com.pubg.krmobile/main.11090.com.pubg.krmobile.obbALFA")
	os.rename("/mnt/shell/0/emulated/Android/obb/com.pubg.krmobile/main.11090.com.pubg.krmobile.obb", "/mnt/shell/0/emulated/Android/obb/com.pubg.krmobile/main.11090.com.pubg.krmobile.obbALFA")
	gg.clearResults()
	gg.toast("🔐OBB Şifrelendi🔐")
end

if obb==2 then
gg.clearResults()
	os.rename("main.11090.com.vng.pubgmobile.obbALFA", "main.11090.com.vng.pubgmobile.obb")
	os.rename("/main.11090.com.vng.pubgmobile.obbALFA", "/main.11090.com.vng.pubgmobile.obb")
	os.rename("com.vng.pubgmobile", "com.vng.pubgmobile")
	os.rename("/storage/emulated/0/Android/obb/com.vng.pubgmobile/main.11090.com.vng.pubgmobile.obbALFA", "/storage/emulated/0/Android/obb/com.vng.pubgmobile/main.11090.com.vng.pubgmobile.obb")
	os.rename("main.11090.com.tencent.ig.obbALFA", "main.11090.com.tencent.ig.obb")
	os.rename("/main.11090.com.tencent.ig.obbALFA", "/main.11090.com.tencent.ig.obb")
	os.rename("com.tencent.ig", "com.tencent.ig")
	os.rename("/storage/emulated/0/Android/obb/com.tencent.ig/main.11090.com.tencent.ig.obbALFA", "/storage/emulated/0/Android/obb/com.tencent.ig/main.11090.com.tencent.ig.obb")
	os.rename("main.11090.com.pubg.krmobile.obb", "main.11090.com.pubg.krmobile.obb")
	os.rename("/main.11090.com.pubg.krmobile.obbALFA", "/main.11090.com.pubg.krmobile.obb")
	os.rename("com.pubg.krmobile", "com.pubg.krmobile")
	os.rename("/storage/emulated/0/Android/obb/com.pubg.krmobile/main.11090.com.pubg.krmobile.obbALFA", "/storage/emulated/0/Android/obb/com.pubg.krmobile/main.11090.com.pubg.krmobile.obb")
	gg.clearResults()
	gg.toast("🔓OBB Şifre Çözüldü🔓")
end
if obb==3 then
HOME()
end
end

if saf==5 then
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16610;8388646;8388805", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("20", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Reportmu Oda Ne Dostum?")
end

if saf==6 then
gg.clearResults()
	gg.setRanges(gg.REGION_C_DATA)
	gg.searchNumber("1.1754945e-37", 16, false, 536870912, 0, -1)
	gg.refineAddress("4E8")
	gg.getResults(30)
	gg.editAll("0", 16)
	gg.sleep(5000)
	gg.searchNumber("0", 16)
	gg.refineAddress("4E8")
	gg.getResults(30)
	gg.editAll("1.1754945e-37", 16)
	gg.clearResults()
	gg.toast('ONnOff')
end

if saf==7 then
gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("909391408;808923191::8", gg.TYPE_DWORD)
    gg.getResults(999)
    gg.editAll("1089886885", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("909391408", gg.TYPE_DWORD)
    gg.getResults(999)
    gg.editAll("1089886885", gg.TYPE_DWORD)
    gg.toast("Gizlendin")
end

if saf==8 then
gg.toast("Yok")
HOME()
end
end

function F3()
sf=gg.choice({
	"📡Anten [Lobi+Oyun]📡",
	"🔫Less Recoil [Lobi]🔫",
	"🤯%50 Kafadan Vurma[Lobi+Oyun]🤯",
	"➕Küçük Artı➕[Oyun]",
	"🔙Geri🔙"
	},nil,"🛡️Ｓａｆｅ   Ｍｅｎü🛡️\n👤ByAlfa👤")
	
if sf==1 then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Antena✓")
end

if sf==2 then
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1,348,759,109;1,953,067,887;1,634,692,166;1,920,287,604:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,634,692,166", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  lessrecoil_value0 = gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
gg.toast("Less Recoil Aktif Edildi")
end

if sf==3 then
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("65", gg.TYPE_FLOAT)
    gg.clearResults()
end

if sf==4 then
gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("90", gg.TYPE_FLOAT)
  gg.toast("Küçük Artı")
end

if sf==5 then
gg.toast("Geri")
HOME()
end
end

function F4()
br=gg.choice({
	"📡Anten[Lobi]📡",
	"🔫No Recoil[Lobi]🔫",
	"🔫Aim Lock[Oyun]🔫",
	"🔫💀Aim Bot 360⁰[Lobi+Oyun]💀🔫",
	"🎥İpad Menü[Oyun]🎥",
	"⛳Çimleri Kaldır[Oyun]⛳",
	"🌫️Sisleri Kaldır[Lobi]🌫️",
	"🧱Duvardan Vurma[Oyun]🧱",
	"🌑Siyah Gök Yüzü[Oyun]🌑",
	"🔙Geri🔙"
	},nil,"Brutal VİP Menü\n‼️Rank Kasıyorsan Buradan Uzaklaş‼️")

if br==1 then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Antena✓")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("16000", gg.TYPE_FLOAT)
gg.toast("Antena Gilli")
end

if br==2 then
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1,348,759,109;1,953,067,887;1,634,692,166;1,920,287,604:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,634,692,166", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.setVisible(false)
  gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT)
  gg.setVisible(false)
  gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("No Recoil Aktif")
end

if br==3 then
gg.setRanges(8)
	gg.clearResults()
	gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
	gg.searchNumber("2,015,175,168.0", gg.TYPE_FLOAT)
	gg.getResults(5)
	gg.editAll("0", gg.TYPE_FLOAT)
	gg.clearResults()
end

if br==4 then
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP|gg.REGION_CODE_APP)
gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2046820353", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP|gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP|gg.REGION_CODE_APP)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.toast("🎯360° Aimbot")
end

if br==5 then
ip=gg.alert("İpad Mod Menu\n⚠️Birtane Seç⚠️","FPP","TPP")
if ip==1 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("360.0;0.00100000005;-9.38575022e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("360.0;0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-1.4235595e-27;254.70928955078", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("IPad Modu Aktif")
end

if ip==2 then
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("220;178;15 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("İpad Mod Aktif")
end
end

if br==6 then
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("7499628;1935766087;29541::", 4, false, 536870912, 0, -1)
  gg.getResults(1)
  gg.searchNumber("29541", 4, false, 536870912, 0, -1)
  gg.getResultsCount()
  gg.getResults(1)
  gg.editAll("1886999666", 4)
  gg.toast("Çimenler Kaldırıldı")
end

if br==7 then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(":Default__ExponentialHeightFog", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🌫️Sis Kaldır🌫️")
end

if br==8 then
gg.clearResults()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("90.775703430176;8;27.25;18;16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("140", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_BSS)
    gg.searchNumber("1.0e-7;1.0e-7;2;2;1::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("Duvar Deşici")
end

if br==9 then
  gg.clearResults()
  if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
  gg.searchNumber("1,120,403,456", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("000", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
  BSKYOFF1=gg.getResults(30)
  gg.editAll("3,266,576,384", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.4028235e38;0.05000000075::5", gg.TYPE_FLOAT, false)
  gg.searchNumber("0.05000000075", gg.TYPE_FLOAT, false)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.clearResults()
  karar = {
{["memory"] = 32},
{["name"] = "ʙʟᴀᴄᴋ sᴋʏ"},
{["value"] = 1233758534, ["type"] = 4},
{["lv"] = 1028443341, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 100, ["offset"] = 12, ["type"] = 16},
}
xqmnb(karar)
  gg.toast("🌚Siyah Gökyüzü Aktif🌚")
end

if br==10 then 
HOME()
end
end

function F5()
birb=gg.choice({
	"🛡️Anti Shake[Lobi+Oyun]🛡️",
	"🚀Uzaya Fırla[Uçak]🚀",
	"✨Sihirli Mermi[Lobi]✨",
	"💀Kafadan Vurma %95[Oyun]💀",
	"➕ Küçük Artı [Oyun]➕",
	"🔫Tepmeyi Kaldır[Lobi+Oyun]🔫",
	"🐇İleri Dogru Zıpla[Oyun]🐇",
	"✅Hasar Bugunu Çöz [Oyun]✅",
	"🔫100m Aim Bot[Lobi+Oyun]🔫",
	"🔫Duvar Arkası Vurma[Oyun]🔫",
	"🔙Geri🔙"
	},nil,"Diğer Hile Menü")
	
if birb==1 then
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.setVisible(false)
  gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT)
  gg.setVisible(false)
  gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("AntiShake aktif")
end

if birb==2 then
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1024;3000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults("100")
gg.editAll("9999999", gg.TYPE_FLOAT)
gg.toast("Lan Biz Niye Yükseliyoz?")
end

if birb==3 then
mg=gg.alert(
	"✨Sihirli Mermi[Oyun]✨",
    "✨Normal✨",
    "💀Abartılmış💀"
)

if mg==1 then
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("90.4850692749F;16", 16, false, 536870912, 0, -1)
  gg.searchNumber("16", 16, false, 536870912, 0, -1)
  magicvalue0 = gg.getResults(20)
  gg.editAll("99", 16)
  gg.clearResults()
  gg.searchNumber("9.20161819458;23;25;30.5", 16, false, 536870912, 0, -1)
  gg.getResultsCount()
  gg.searchNumber("25;30.5", 16, false, 536870912, 0, -1)
  magicvalue1 = gg.getResults(10)
  gg.editAll("240", 16)
  gg.toast("✨Sihirli Mermi Aktif Edildi")
end


if mg==2 then
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("90.4850692749F;16", 16, false, 536870912, 0, -1)
  gg.searchNumber("16", 16, false, 536870912, 0, -1)
  magicvalue0 = gg.getResults(20)
  gg.editAll("198", 16)
  gg.clearResults()
  gg.searchNumber("9.20161819458;23;25;30.5", 16, false, 536870912, 0, -1)
  gg.getResultsCount()
  gg.searchNumber("25;30.5", 16, false, 536870912, 0, -1)
  magicvalue1 = gg.getResults(10)
  gg.editAll("480", 16)
  gg.toast("✨Sihirli Mermi Aktif Edildi")
end
end



if birb==4 then
gg["clearResults"]()
gg["setRanges"](gg["REGION_BAD"])
gg["searchNumber"]("-88.66608428955;26:512", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("26", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](2)
gg["editAll"]("-460", gg["TYPE_FLOAT"])
gg["clearResults"]()
gg["searchNumber"]("-88.73961639404;28:512", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("28", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](2)
gg["editAll"]("-560", gg["TYPE_FLOAT"])
gg["clearResults"]()
gg["setRanges"](gg["REGION_ANONYMOUS"])
gg["searchNumber"]("9.201618;30.5;25", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("25;30.5", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](10)
gg["editAll"]("99999", gg["TYPE_FLOAT"])
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_DATA"] | gg["REGION_CODE_APP"])
gg["searchNumber"]("-298284466;-1.304566e23F", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("-298284466", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](99)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["clearResults"]()
end

if birb==5 then
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("90", gg.TYPE_FLOAT)
gg.toast("Küçük Artı")
end

if birb==6 then
gg.clearResults()
	gg.setRanges(gg.REGION_ANONYMOUS)
	gg.searchNumber("2D;256D;256D;0.96666663885117;256D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber("0.96666663885117", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(3)
	gg.editAll("999.9949", gg.TYPE_FLOAT)
	gg.clearResults()
	gg.searchNumber("3.20000004768;1.09375", 16, false, 536870912, 0, -1)
	gg.searchNumber("3.20000004768;1.09375", 16, false, 536870912, 0, -1)
	gg.getResults(100)
	gg.editAll("0", 16)
	gg.toast("Dostum Sanki Yanımdan Birileri geçiyor?")
end

if birb==7 then
gg.clearResults()
	gg.setRanges(gg.REGION_ANONYMOUS)
	gg.searchNumber("7.0064923e-45F;0.6~1;1065353216D;100F;1065353216D;2500000000F;0.10000000149F;88F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.refineNumber("0.6~1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	frontjump_value0 = gg.getResults(2500)
	gg.editAll("3.5241295", gg.TYPE_FLOAT)
	gg.clearResults()
	gg.searchNumber("300;0;0.05000000075;2;25::17", gg.TYPE_FLOAT, false)
	gg.refineNumber("0.05000000075", gg.TYPE_FLOAT, false)
	frontjump_value1 = gg.getResults(2400)
	gg.editAll("2.1241295", gg.TYPE_FLOAT)
	gg.clearResults()
	gg.toast("Tavşan Reis")
end


if birb==8 then
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('50000~100000;0;1;5D~100D::13', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
    else
      gg.searchNumber('50000~100000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(210)
      gg.editAll('35125', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast('Fix Damage Aktif')
    end
end
 
if birb==9 then
gg.setRanges(8)
	gg.clearResults()
	gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
	gg.searchNumber("2,015,175,168.0", gg.TYPE_FLOAT)
	aimbot100value0 = gg.getResults(5)
	gg.editAll("0", gg.TYPE_FLOAT)
	gg.clearResults()
	gg.toast("🎯100m Aim Bot Aktif🎯")
end

if birb==10 then
gg.setRanges(gg.REGION_C_BSS)
  gg.clearResults()
  gg.searchNumber("869,711,765D;2;1::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  wallshot_value0 = gg.getResults(2)
  gg.editAll("-10", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Duvardan Vurma")
end

if birb==11 then
gg.setVisible(true)
HOME()
end
end

function F6()
gg.alert("🔰Bu Bölüm üzerinde Hala Çalışılıyor...🔰")
HOME()
end

function F7()
gg.alert("🔰Bu Bölüm üzerinde Hala Çalışılıyor...🔰")
HOME()
end

function F8()
xxx=os.date("%d")
yyy='05'
gg.alert(yyy-xxx)
HOME()
end

function F9()
gg.isVisible(true)
print(cvd)
print("❤️Yine Beklerim❤️")
os.exit()
end

while true do
  if gg.isVisible(true) then
    PUBGMH = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if PUBGMH == 1 then
    HOME()
 end
 end
end
	
	
function vip()
cbd=gg.choice({
	"👤Görevli Girişi👤",
	"Çıkış"
	},nil,"Giriş Peneli")
	
if cbd==1 then
VUNuTsSerEDbkRUFMaYG = '20201110'
Password﻿ = 'VUNuTsSerEDbkRUFMaYG'
PS = gg.prompt({'✅Giriş Paneli✅'},{[1]=''},{[1]='text'})
if not PS the﻿n os.exit() 
end 
if PS[1] == Password then 
gg.toast('Key Doğrulandı')
else 
gg.alert('Geçersiz Anahtar\nAnahtar @AHTTRR de paylaşıldı') os.exit() end

if os.date("%Y%m%d") > VUNuTsSerEDbkRUFMaYG then
  hh = gg.alert("⛔ Key Süreniz Dolmuştur ⛔")
  os.exit()
end
asd()
end

if cbd==2 then
os.exit()
end
end

function bedava()
SnLcYSbBBaTvqtkabKhiy = '20201105'
if os.date("%Y%m%d") > SnLcYSbBBaTvqtkabKhiy then
  hh = gg.alert("⛔Script Süreniz Dolmuştur⛔")
  os.exit()
end
asd()
end

function exit()
os.exit()
end

--Script Başlangıç Yeri

i="Güncelleme Durumu: Bakım Var"


otu=gg.choice({
	"✨Vip Üyelik Bölümü✨",
	"🆓Bedava Giriş🆓",
	"❌Çıkış❌"
	},nil,i)

if otu==1 then
vip()
end
if otu==2 then 
bedava()
end

if otu==3 then
exit()
end
