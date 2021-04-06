file = io.open("BrosHackLOG.txt","w")
file:write("𝐁𝐫𝐨𝐬 𝐇𝐚𝐜𝐤\n𝐁𝐫𝐨𝐬 𝐇𝐚𝐜𝐤\n𝐁𝐫𝐨𝐬 𝐇𝐚𝐜𝐤\n𝐁𝐲:𝐀𝐥𝐟𝐚 Tarafından Kodlanmıştır...\nLog Sistemi Aktif!\nTelegram: @BrosHackTeam\nTelegram: @BrosHackTeam\n\n\n")	

date = os.date("%d %m %Y - %H %M %S")

file:write(os.date("%d %m %Y - %H %M %S : Script Çalıştırıldı!\n"))


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed To Open") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed To Open") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "Successfully Opened, Modified In Total" .. xgsl .. "Article Data") else gg.toast(qmnb[2]["name"] .. "Failed To Open") end end end end
function SearchWrite(Search, Write, Type) gg.clearResults()  gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base  local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end if (#data > 0) then gg.toast("found"..#data.."Article data") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type  t[#t].value = w[1]  if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("No data found") return false  end end
function SearchWrite(Search, Write, Type)    gg.clearResults()        gg.searchNumber(Search[1][1], Type)    local count = gg.getResultCount()    local result = gg.getResults(count)    gg.clearResults()    local data = {}     local base = Search[1][2]    if (count > 0) then        for i, v in ipairs(result) do            v.isUseful = true         end        for k=2, #Search do            local tmp = {}            local offset = Search[k][2] - base             local num = Search[k][1]                         for i, v in ipairs(result) do                tmp[#tmp+1] = {}                 tmp[#tmp].address = v.address + offset                  tmp[#tmp].flags = v.flags              end            tmp = gg.getValues(tmp)             for i, v in ipairs(tmp) do                if ( tostring(v.value) ~= tostring(num) ) then                    result[i].isUseful = false                 end            end        end        for i, v in ipairs(result) do            if (v.isUseful) then                data[#data+1] = v.address            end        end        if (#data > 0) then           local t = {}           local base = Search[1][2]           for i=1, #data do               for k, w in ipairs(Write) do                   offset = w[2] - base                   t[#t+1] = {}                   t[#t].address = data[i] + offset                   t[#t].flags = Type                   t[#t].value = w[1]                   if (w[3] == true) then                      local item = {}                       item[#item+1] = t[#t]                       item[#item].freeze = true                       gg.addListItems(item)                   end                                 end           end           gg.setValues(t)           gg.addListItems(t)        else            gg.toast("ITZX7", false)            return false        end    else        gg.toast("Vᴀʟᴜᴇs Nᴏᴛ Fᴏᴜɴᴅ")        return false    end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end


gg.setVisible(false)
gg.sleep(200)
gg.toast("🇹🇷🇹🇷HOŞGELDİN🇹🇷🇹🇷")
gg.sleep(200)
gg.sleep(400)
gg.toast(" \nYükleniyor…10%\n█▒▒▒▒▒▒▒▒▒")
gg.sleep(100)
gg.toast(" \nYükleniyor…20%\n██▒▒▒▒▒▒▒▒")
gg.sleep(100)
gg.toast(" \nYükleniyor…30%\n███▒▒▒▒▒▒▒")
gg.sleep(100)
gg.toast(" \nYükleniyor…40%\n████▒▒▒▒▒▒")
gg.sleep(100)
gg.toast(" \nYükleniyor…50%\n█████▒▒▒▒▒")
gg.sleep(100)
gg.toast(" \nYükleniyor…60%\n██████▒▒▒▒")
gg.sleep(100)
gg.toast(" \nYükleniyor…70%\n███████▒▒▒")
gg.sleep(100)
gg.toast(" \nYükleniyor…80%\n████████▒▒")
gg.sleep(100)
gg.toast(" \nYükleniyor…90%\n█████████▒")
gg.sleep(100)
gg.toast(" \nBaşarılı…100%\n██████████")
gg.sleep(100)
gg.toast("BROS HACK CHANNEL")
mesaj="BROS HACK MENÜ"
gg.alert(mesaj,"Devam Et➡️")
gg.setVisible(true)
PUBGMH = -1
function HOME() 
MENU = gg.choice({
           "『🛡️』Antiban\n  ➥[Lobby]",
           "『🧱』WALL HACK MENU\n ➥[Game]",
           "『🔫』GUN MENU\n➥[Game]",
           "『💀』GAME MENU\n➥[Game]",
           "『🎯』OTHER\n➥[Game]",
           "『🖼️』SKİN HACK\n➥[Lobby]",
           "『❎』 E X I T "
}, nil, "👑BROS MAİN MENU👑")
    if MENU == nil then
  else
    if MENU == 1 then
      MN1()
    end
    if MENU == 2 then
     HME()
    end
    if MENU == 3 then 
    MN3()
    end
    if MENU == 4 then
    MN4()
    end
    if MENU == 5 then 
    gg.alert("Menü Mevcut Değil ☹️")
    HOME()
    end
    if MENU == 6 then 
      MN77()
      end
    if MENU == 7 then 
      EXIT()
    end
  end
  PUBGMH = -1
end
function MN77()
  MN7 = gg.multiChoice({
    '🧭AKM Skin 2019',
    '🧭Scar L Skin 2019',
    '🧭M416 Skin 2019',
    '🧭M16 Skin 2019',
    '🧭98k Skin 2019',
    '🧭AKM Red Orange',
    '🧭Akm Silver',
    '🧭AKM Black Gold',
    '🧭Akm White Red',
    '🧭SCAR Fury',
    '🧭SCAR Black Gold',
    '🧭SCAR Red Orange',
    '🧭SCAR White Red',
    '🧭M416 Cherry Blossom',
    '🧭M416 Black Gold',
    '🧭M416 Red Red',
    '🧭M416 Mix',
    '🧭M416 Black Yellow',
    '🧭M416 Silver - Fury',
    '🧭M416 China Red',
    '🧭M16 Black Red',
    '🧭M16 Blue Orange',
    '🧭M16 Black Gold',
    '🧭M16 Rose Elf',
    '🧭M16 White Orange',
    '🧭M16 Fury',
    '🧭UMP9 Red Orange',
    '🧭UMP9 Silver Eagle',
    '🧭UMP9 Cherry Blossom',
    '🧭UZI Fury',
    '🧭98k color matching',
    '🧭98k black gold',
    '🧭98k mix',
    '🧭98k red',
    '🧭AWM Cherry Blossom',
    '🧭Small yellow clothing',
    '🧭Hoodie',
    '🧭Black trench coat',
    '🧭White trench coat',
    '🧭Golden Windbreaker',
    '🧭Friends',
    '🧭Grass Geely Service',
    '🧭Desert Geely',
    '🧭Unknown clothes 1',
    '🧭Unknown clothes 2',
    '🧭S1 season God of War Black Parachute',
    '🧭S2 Season God of War Red Parachute',
    '🧭S4 Season God of War White Blue Parachute',
    '🧭White Red Dragon Parachute',
    '🧭98k Cross Parachute',
    '🧭Starboard Parachute',
    '🧭Camouflage Parachute',
    '🧭Anger Chicken Black Parachute',
    '🧭Chinese Red Parachute',
    '🧭S3 season Parachute',
    '🧭Sesame Point Parachute',
    '🧭Three-level head black Parachute',
    '🧭Golden Chicken Black Parachute',
    '🧭Ordinary round initial green Parachute',
    '🧭Circular Golden Dragon Black Parachute',
    '🧭Circular Purple Parachute',
    '🧭Circular Camouflage Parachute',
    '🧭The round pirate king white Parachute',
    '🧭flat gold dragon black Parachute',
    '🧭square red and black Parachute',
    '🛡️M416 The Fool',
    '⚔️BACK⚔️'
  }, nil, '🛡️YEDİBELA TEAM')
  if MN7 == nil then
  else
    if MN7[1] == true then
      A1()
    end
    if MN7[2] == true then
      A2()
    end
    if MN7[3] == true then
      A3()
    end
    if MN7[4] == true then
      A4()
    end
    if MN7[5] == true then
      A5()
    end
    if MN7[6] == true then
      A6()
    end
    if MN7[7] == true then
      A7()
    end
    if MN7[8] == true then
      A8()
    end
    if MN7[9] == true then
      A9()
    end
    if MN7[10] == true then
      A10()
    end
    if MN7[11] == true then
      A11()
    end
    if MN7[12] == true then
      A12()
    end
    if MN7[13] == true then
      A13()
    end
    if MN7[14] == true then
      A14()
    end
    if MN7[15] == true then
      A15()
    end
    if MN7[16] == true then
      A16()
    end
    if MN7[17] == true then
      A17()
    end
    if MN7[18] == true then
      A18()
    end
    if MN7[19] == true then
      A19()
    end
    if MN7[20] == true then
      A20()
    end
    if MN7[21] == true then
      A21()
    end
    if MN7[22] == true then
      A22()
    end
    if MN7[23] == true then
      A23()
    end
    if MN7[24] == true then
      A24()
    end
    if MN7[25] == true then
      A25()
    end
    if MN7[26] == true then
      A25()
    end
    if MN7[27] == true then
      A27()
    end
    if MN7[28] == true then
      A28()
    end
    if MN7[29] == true then
      A29()
    end
    if MN7[30] == true then
      A30()
    end
    if MN7[31] == true then
      A31()
    end
    if MN7[32] == true then
      A32()
    end
    if MN7[33] == true then
      A33()
    end
    if MN7[34] == true then
      A34()
    end
    if MN7[35] == true then
      A35()
    end
    if MN7[36] == true then
      A36()
    end
    if MN7[37] == true then
      A37()
    end
    if MN7[38] == true then
      A38()
    end
    if MN7[39] == true then
      A39()
    end
    if MN7[40] == true then
      A40()
    end
    if MN7[41] == true then
      A41()
    end
    if MN7[42] == true then
      A42()
    end
    if MN7[43] == true then
      A43()
    end
    if MN7[44] == true then
      A44()
    end
    if MN7[45] == true then
      A45()
    end
    if MN7[46] == true then
      A46()
    end
    if MN7[47] == true then
      A47()
    end
    if MN7[48] == true then
      A48()
    end
    if MN7[49] == true then
      A49()
    end
    if MN7[50] == true then
      A50()
    end
    if MN7[51] == true then
      A51()
    end
    if MN7[52] == true then
      A52()
    end
    if MN7[53] == true then
      A53()
    end
    if MN7[54] == true then
      A54()
    end
    if MN7[55] == true then
      A55()
    end
    if MN7[56] == true then
      A56()
    end
    if MN7[57] == true then
      A57()
    end
    if MN7[58] == true then
      A58()
    end
    if MN7[59] == true then
      A59()
    end
    if MN7[60] == true then
      A60()
    end
    if MN7[61] == true then
      A61()
    end
    if MN7[62] == true then
      A62()
    end
    if MN7[63] == true then
      A63()
    end
    if MN7[64] == true then
      A64()
    end
    if MN7[65] == true then
      A65()
    end
    if MN7[66] == true then
      A66()
    end
    if MN7[67] == true then
      HOME()
    end
  end--Eʟsᴇ | ∂є¢ ву α¢ιℓ
  XYZFAN = -1
end
function A1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100100;101001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100100', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('1101001009', gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100300;101003', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100300', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('1101003016', gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100400;101004', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100400', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('1101004061', gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100200;101002', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('1101002001', gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10300100;103001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10300100', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('1103001042', gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('🛡️YEDİBELA🛡️!')
  gg.clearResults()
end

function A6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100100;101001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100100', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101001001', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100100;101001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100100', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101001002', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A8()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100100;101001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100100', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101001003', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A9()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100100;101001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100100', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101001004', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100300;101003', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100300', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101003001', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
  gg.clearResults()
end

function A11()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100300;101003', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100300', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101003002', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A12()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100300;101003', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100300', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101003003', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A13()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100300;101003', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100300', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101003004', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A14()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100400;101004', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100400', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101004001', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A15()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100400;101004', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100400', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101004002', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A16()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100400;101004', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100400', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101004003', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A17()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100400;101004', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100400', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101004004', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A18()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100400;101004', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100400', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101004005', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A19()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100400;101004', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100400', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101004006', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A20()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100400;101004', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100400', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll('101004007', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A21()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100200;101002', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101002001', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A22()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100200;101002', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101002002', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A23()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100200;101002', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101002003', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A24()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100200;101002', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101002004', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A25()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100200;101002', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101002005', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A26()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100500;101002', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101002006', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A27()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10200200;102002', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10200200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('102002001', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A28()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10200200;102002', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10200200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('102002002', gg.TYPE_DWORD)
  gg.toast('??️YEDİBELA🛡️!')
end

function A30()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10200200;102002', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10200200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('102002003', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A31()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10200100;102001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10200100', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('102001003', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A32()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10300100;103001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10300100', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('103001001', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A33()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10300100;103001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10300100', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('103001002', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A34()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10300100;103001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10300100', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('103001003', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A35()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10300100;103001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10300100', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('103001005', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A36()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10300300;103003', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10300300', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('103003001', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A37()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;403017;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('403017', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403188', gg.TYPE_DWORD)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;404007;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('404007', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403188', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;405011;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('405011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403188', gg.TYPE_DWORD)
  gg.clearResults()
end

function A38()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;403251;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('403251', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403333', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;404007;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('404007', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403333', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;405011;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('405011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403333', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A39()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;403251;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('403251', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403182', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;404007;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('404007', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403182', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;405011;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('405011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403182', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A40()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;403251;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('403251', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403183', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;404007;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('404007', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403183', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;405011;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('405011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403183', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A41()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;403251;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('403251', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403188', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;404007;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('404007', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403188', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;405011;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('405011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403189', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
  gg.clearResults()
end

function A42()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;403251;4;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('403251', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403259', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;404007;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('404007', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403259', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;405011;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('405011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403259', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A43()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;403251;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('403251', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403045', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;404007;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('404007', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403045', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;405011;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('405011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403045', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A44()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;403251;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('403251', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403187', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;404007;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('404007', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403187', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;405011;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('405011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403187', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A45()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;403251;4;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('403251', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403189', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;404007;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('404007', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403189', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;405011;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('405011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403189', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A46()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;403251;4;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('403251', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403190', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;404007;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('404007', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403190', gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;405011;4;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('405011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('403190', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A47()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703013', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A48()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703014', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A49()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703048', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A50()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703009', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A51()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('7030022', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A52()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703029', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A53()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703030', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A54()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703036', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A55()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703043', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A56()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703044', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A57()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703045', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A58()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703060', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A59()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703061', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A60()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703023', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A61()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703016', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A62()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703017', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A63()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703019', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A64()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703020', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A65()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703026', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A66()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('100;4;1;703,001;', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('703001', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('703049', gg.TYPE_DWORD)
  gg.toast('🛡️YEDİBELA🛡️!')
end

function A67()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100400;101004', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100400', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('1101004061', gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('🎯M416 HACK SKIN🎯')
end

function CL()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('10100300;101003', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('10100300', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('101003001', gg.TYPE_DWORD)
  gg.toast('SKIN SCAR-L')
end
function MN1() 
REX = gg["multiChoice"]({"🛡️ ʙʏᴘᴀss √\n[Lobi]™","🛡️ Log Clean√\n{Alan}™","🛡️ Anti 3rd party\n[BETA]™","🔙GERİ🔙"}, nil, "👑BROS👑⚓ByMisakiMey👑")
if REX == nil then
else
  if REX[1] == true then
    Anti()
  end
  if REX[2]== true then
   log()
  end
  if REX[3] == true then 
  anti3()
  end
PUBGMH = -1
end
end

function Anti()
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD)
  gg.setVisible(false)
  gg.refineNumber("582749752655872", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("565157566611456;288232579469934592", gg.TYPE_QWORD)
  gg.setVisible(false)
  gg.refineNumber("565157566611456", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("562954248388607;578351706144768", gg.TYPE_QWORD)
  gg.setVisible(false)
  gg.refineNumber("562954248388607", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4398046511104;544434349408256", gg.TYPE_QWORD)
  gg.setVisible(false)
  gg.refineNumber("4398046511104", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("577,252,194,516,992;288,233,678,981,562,368", gg.TYPE_QWORD)
  gg.setVisible(false)
  gg.refineNumber("577,252,194,516,992", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.47977118e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.getResults(99999)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.47935079e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.getResults(99999)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.4789304e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.getResults(99999)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4.74745907e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.getResults(99999)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.54563795e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.getResults(99999)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.0131465e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.getResults(99999)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("118334", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("856896", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("123010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("123179", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("123274", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("739633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("123297", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("739657", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.clearResults()
  gg.searchNumber("720914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.clearResults()
  gg.searchNumber("1717526904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("1631741029", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("1718503801", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("1632121934", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("1734633842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.clearResults()
  gg.searchNumber("1,613,306,825", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,879,048,193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,202,743,336", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,685,382,481", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("219972", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("224068", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("204484", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("103337", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("131697", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("249924", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("145609", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("143885", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("144653", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("917521", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("192637", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1634082917", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,489,248,375", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("145192437", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1802398060", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1617827958", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,885,302,896", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,685,382,481", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(100000)
  gg.editAll("720914", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD)
  gg.getResultsCount()
  gg.setVisible(false)
  gg.refineNumber("582749752655872", gg.TYPE_QWORD)
  gg.getResults(5000)
  gg.setVisible(false)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.searchNumber("565157566611456;566257078239232", gg.TYPE_QWORD)
  gg.getResultsCount()
  gg.setVisible(false)
  gg.refineNumber("565157566611456", gg.TYPE_QWORD)
  gg.getResults(5000)
  gg.setVisible(false)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134658;134658", gg.TYPE_DWORD)
  gg.refineNumber("134658", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("132098;133635", gg.TYPE_DWORD)
  gg.refineNumber("132098", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("852002;851986", gg.TYPE_DWORD)
  gg.refineNumber("851986", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131075;131074", gg.TYPE_DWORD)
  gg.refineNumber("131074", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("196610;131076", gg.TYPE_DWORD)
  gg.refineNumber("196610", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("331107;196608", gg.TYPE_DWORD)
  gg.refineNumber("196608", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("262144;196611", gg.TYPE_DWORD)
  gg.refineNumber("262144", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("121393;196418", gg.TYPE_DWORD)
  gg.refineNumber("196418", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("317811;832040", gg.TYPE_DWORD)
  gg.refineNumber("832040", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("6644577;6581861", gg.TYPE_DWORD)
  gg.refineNumber("6581861", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("-1624280992;-1624393024", gg.TYPE_DWORD)
  gg.refineNumber("-1624280992", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("-162439024", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("-1624271008;-1624392992", gg.TYPE_DWORD)
  gg.refineNumber("-1624271008", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("-162439024", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("-1561942080;-1562918984", gg.TYPE_DWORD)
  gg.refineNumber("--1561942080", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("-162439024", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.alert("Bypass Active Coder ByMisakiMey")
file:write(os.date("%d %m %Y - %H %M %S : Bypass Aktifleştirildi!\n"))
end

function log()
gg.toast("OKAY")
file:write(os.date("%d %m %Y - %H %M %S : Log Silindi!\n"))
end

function anti3()
gg.toast("Active")
file:write(os.date("%d %m %Y - %H %M %S : 3. Parti Önlendi!\n"))
end

function HME() --📂 WALL HACK
file:write(os.date("%d %m %Y - %H %M %S : Wall Hack Menü Girildi\n"))
  MN1 = gg.choice({
    "𒊹︎︎︎ 𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 & 𝙲𝚘𝚕𝚘𝚛\n╰➥ SADECE 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗",
    "𒊹︎︎︎ 𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 & 𝙲𝚘𝚕𝚘𝚛\n╰➥ TÜM CİHAZLAR",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}|>"
  }, nil,"𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ByMisakiMey")
  if MN1 == nil then
  else
    if MN1 == 1 then
      SNAPWHM()
    end
    if MN1 == 2 then
      OTHERWH()
    end
    if MN1 == 3 then
      HOME()
    end
  end
  PUBGMH = -1
end

function SNAPWHM()
  WALL11 = gg.multiChoice({
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 400\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 410\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 415\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 425\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 430\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 435\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱??𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 439\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊??𝚍𝚛𝚊𝚐𝚘𝚗 450\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 600\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 615\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 616\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 625\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 636\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍??",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 660\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 665\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 675 \n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 710\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 712\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 720\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 820\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 835\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 845\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 855\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ByMisakiMey")
  if WALL11 == nil then
  else
    if WALL11[1] == true then
      WHC400()
    end
    if WALL11[2] == true then
      WHC410()
    end
    if WALL11[3] == true then
      WHC415()
    end
    if WALL11[4] == true then
      WHC425()
    end
    if WALL11[5] == true then
      WHC430()
    end
    if WALL11[6] == true then
      WHC435()
    end
    if WALL11[7] == true then
      WHC439()
    end
    if WALL11[8] == true then
      WHC450()
    end
    if WALL11[9] == true then
      WHC600()
    end
    if WALL11[10] == true then
      WHC615()
    end
    if WALL11[11] == true then
      WHC616()
    end
    if WALL11[12] == true then
      WHC625()
    end
    if WALL11[13] == true then
      WHC636()
    end
    if WALL11[14] == true then
      WHC660()
    end
    if WALL11[15] == true then
      WHC665()
    end
    if WALL11[16] == true then
      WHC675()
    end
    if WALL11[17] == true then
      WHC710()
    end
    if WALL11[18] == true then
      WHC712()
    end
    if WALL11[19] == true then
      WHC720()
    end
    if WALL11[20] == true then
      WHC820()
    end
    if WALL11[21] == true then
      WHC835()
    end
    if WALL11[22] == true then
      WHC845()
    end
    if WALL11[23] == true then
      WHC855()
    end
    if WALL11[24] == true then
      HOME()
    end
    PUBGMH = -1
  end
end

function WHC400()
  CL400 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GREEN 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 400",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 400",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ByMisakiMey")
  if CL400 == nil then
  else
    if CL400[1] == true then
      C4001()
    end
    if CL400[2] == true then
      C4002()
    end
    if CL400[3] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C4001()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.2229865e-43F;2.0F;-1.0F;-1.0F;2.0F:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(360)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("8,201;8,202;538,968,081:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("8", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C4002()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,073,741,824", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("1,123,024,896", 4)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", 16)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("8", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function WHC410()
  CL410 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 410",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 410",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ByMisakiMey")
  if CL410 == nil then
  else
    if CL410[1] == true then
      C4101()
    end
    if CL410[2] == true then
      C4102()
    end
    if CL410[3] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C4101()
  gg.toast("༆")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.1949605e-43;3.1809475e-43;2.0;3.2089735e-43", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("150", 16)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("8204;8205;1,194,344,451", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8204", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15", 4)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1,669,693,440;8205", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8205", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("8204", 4)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("856128", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("856118", 4)
  gg.clearResults()
  gg.searchNumber("196610;1280;196608:25", 4, false, gg.S8GN_EQUAL, 0, -1)
  gg.searchNumber("196608", 4, false)
  gg.getResults(10)
  gg.editAll("9999", 4)
  gg.clearResults()
  
end

function C4102()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.1949605e-43;3.1809475e-43;2.0;3.2089735e-43", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("150", 16)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("8204;8205;1,194,344,451", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8204", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15", 4)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1,669,693,440;8205", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8205", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("8204", 4)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("8", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function WHC415()
  CL415 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 415",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 415",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ByMisakiMey")
  if CL415 == nil then
  else
    if CL415[1] == true then
      C4151()
    end
    if CL415[2] == true then
      C4152()
    end
    if CL415[3] == true then
      HOME()
    end
    PUBGMH = -1
  end
end

function C4151()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,073,741,824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("1,123,024,896", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(69)
  gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function C4152()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,073,741,824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("1,123,024,896", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("8", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function WHC425()
  CL425 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱??𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 425",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 425",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GREEN 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 425",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 MIX 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 425",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL425 == nil then
  else
    if CL425[1] == true then
      C4251()
    end
    if CL425[2] == true then
      C4252()
    end
    if CL425[3] == true then
      C4253()
    end
    if CL425[4] == true then
      C4254()
    end
    if CL425[5] == true then
      HOME()
    end
    PUBGMH = -1
  end
end

function C4251()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.9427268e-44;2.0;3.0828566e-44;-1.0;3.2229865e-44;3.3631163e-44;3.643376e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1529215e-43;2.0F;3.1669345e-43F;3.1809475e-43:49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("200,761;92;8,204;856,124;108;196,610:409", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("8203", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C4252()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.9427268e-44;2.0;3.0828566e-44;-1.0;3.2229865e-44;3.3631163e-44;3.643376e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1529215e-43;2.0F;3.1669345e-43F;3.1809475e-43:49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("856128", gg.TYPE_DWORD, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("856118", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("196610;1280;196608:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("196608", gg.TYPE_DWORD, false, gg.SIGN_EQUA, 0, -1)
  gg.getResults(10)
  gg.editAll("9999", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C4253()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.9427268e-44;2.0;3.0828566e-44;-1.0;3.2229865e-44;3.3631163e-44;3.643376e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1529215e-43;2.0F;3.1669345e-43F;3.1809475e-43:49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("856,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.getResults(3)
  gg.editAll("856095", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("196,610;1,280;196,608::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("196608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("9999", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C4254()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.9427268e-44;2.0;3.0828566e-44;-1.0;3.2229865e-44;3.3631163e-44;3.643376e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1529215e-43;2.0F;3.1669345e-43F;3.1809475e-43:49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("856128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("99", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("200761;92;8204;856124;108;196610:409", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("1", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function WHC430()
  CL430 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 430",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 430",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil,"𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL430 == nil then
  else
    if CL430[1] == true then
      C4301()
    end
    if CL430[2] == true then
      C4302()
    end
    if CL430[3] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C4301()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,141D;4.7408155e21;-5.5693206e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(69)
  gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function C4302()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,141D;4.7408155e21;-5.5693206e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
end

function WHC435()
  CL435 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 435",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 435",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL435 == nil then
  else
    if CL435[1] == true then
      C4351()
    end
    if CL435[2] == true then
      C4352()
    end
    if CL435[3] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C4351()
  
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;3.7615819e-37;4.814603e21;4.7408149e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;3.7615819e-37;1.3912552e-19;4.9252829e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
end

function C4352()
  
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;3.7615819e-37;4.814603e21;4.7408149e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;3.7615819e-37;1.3912552e-19;4.9252829e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(69)
  gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function WHC439()
  CL439 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 439",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 439",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL439 == nil then
  else
    if CL439[1] == true then
      C4391()
    end
    if CL439[2] == true then
      C4392()
    end
    if CL439[3] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C4391()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
end

function C4392()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(69)
  gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function WHC450()
  CL450 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 450",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 450",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL450 == nil then
  else
    if CL450[1] == true then
      C4501()
    end
    if CL450[2] == true then
      C4502()
    end
    if CL450[3] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C4501()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
end

function C4502()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(69)
  gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function WHC600()
  CL600 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 600",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 600",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL600 == nil then
  else
    if CL600[1] == true then
      C6001()
    end
    if CL600[2] == true then
      C6002()
    end
    if CL600[3] == true then
      HOME()
    end
    PUBGMH = -1
  end
end

function C6001()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(69)
  gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function C6002()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
end

function WHC615()
  CL615 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 615",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GREEN 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 615",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 615",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL615 == nil then
  else
    if CL615[1] == true then
      C6151()
    end
    if CL615[2] == true then
      C6152()
    end
    if CL615[3] == true then
      C6153()
    end
    if CL615[4] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C6151()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.2229865e-43;2.0;-1.0;-1.0;2.0:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("122", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1D;2D;91D:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1;2;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6152()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.2229865e-43;2.0;-1.0;-1.0;2.0:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("122", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("8.201D;8.202D;538.968.081D:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8201;8202;538968081", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("8", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6153()
  gg.toast("༆??𝒊𝒏𝒈𝒔𝑻𝒆𝒂𝑴🇹🇷")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.2229865e-43;2.0;-1.0;-1.0;2.0:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("122", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
end

function WHC616()
  CL616 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 616",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 616",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL616 == nil then
  else
    if CL616[1] == true then
      C6161()
    end
    if CL616[2] == true then
      C6162()
    end
    if CL616[3] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C6161()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
end

function C6162()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(69)
  gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function WHC625()
  CL625 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 625",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GREEN\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 625",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 625",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 625",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL625 == nil then
  else
    if CL625[1] == true then
      C6251()
    end
    if CL625[2] == true then
      C6252()
    end
    if CL625[3] == true then
      C6253()
    end
    if CL625[4] == true then
      C6254()
    end
    if CL625[5] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C6251()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6252()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("768;32769;-2134900717", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("32769", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("10", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("0;32770;-2134900716", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("32770", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6253()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("ABLUKA🇹🇷")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6254()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
  gg.setVisible(false)
end

function WHC636()
  CL636 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 636",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GREEN\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 636",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 636",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 636",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL636 == nil then
  else
    if CL636[1] == true then
      C6361()
    end
    if CL636[2] == true then
      C6362()
    end
    if CL636[3] == true then
      C6363()
    end
    if CL636[4] == true then
      C6364()
    end
    if CL636[5] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C6361()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6362()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("768;32769;-2134900717", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("32769", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("10", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("0;32770;-2134900716", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("32770", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6363()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6364()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝙰𝚋𝙻𝚄𝚔?? ❤️")
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
  gg.setVisible(false)
end

function WHC660()
  CL660 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 660",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GRENN 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 660",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 660",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 660",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL660 == nil then
  else
    if CL660[1] == true then
      C6601()
    end
    if CL660[2] == true then
      C6602()
    end
    if CL660[3] == true then
      C6603()
    end
    if CL660[4] == true then
      C6604()
    end
    if CL660[5] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C6601()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6602()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("768;32769;-2134900717", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("32769", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("10", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("0;32770;-2134900716", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("32770", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6603()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6604()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
  gg.setVisible(false)
end

function WHC665()
  CL665 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 665",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GRENN 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 665",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 665",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 665",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL665 == nil then
  else
    if CL665[1] == true then
      C6651()
    end
    if CL665[2] == true then
      C6652()
    end
    if CL665[3] == true then
      C6653()
    end
    if CL665[4] == true then
      C6654()
    end
    if CL665[5] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C6651()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("\"8200;1194344475;8201\"", 4, false, 536870912, 0, -1)
  gg.processResume()
  gg.refineNumber("\"8200;8201\"", 4, false, 536870912, 0, -1)
  gg.processResume()
  gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("\"7\"", 4)
  gg.processResume()
  
end

function C662()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("768;32769;-2134900717", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("32769", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("10", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("0;32770;-2134900716", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("32770", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6653()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6654()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
  gg.setVisible(false)
end

function WHC675()
  CL675 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 675",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GRENN 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 675",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 675",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 675",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL675 == nil then
  else
    if CL675[1] == true then
      C6751()
    end
    if CL675[2] == true then
      C6752()
    end
    if CL675[3] == true then
      C6753()
    end
    if CL675[4] == true then
      C674()
    end
    if CL675[5] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C6751()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6752()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("768;32769;-2134900717", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("32769", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("10", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("0;32770;-2134900716", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("32770", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C6753()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C674()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
  gg.setVisible(false)
end

function WHC710()
  CL710 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 710",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GRENN 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 710",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 710",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊??𝚍𝚛𝚊𝚐𝚘𝚗 710",
    "<I{•----» 𝐁??𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL710 == nil then
  else
    if CL710[1] == true then
      C7101()
    end
    if CL710[2] == true then
      C7102()
    end
    if CL710[3] == true then
      C7103()
    end
    if CL710[4] == true then
      C7104()
    end
    if CL710[5] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C7101()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C7102()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C7103()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C7104()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
  gg.setVisible(false)
end

function WHC712()
  CL712 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘?? 712",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GRENN 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 712",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 712",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 712",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL712 == nil then
  else
    if CL712[1] == true then
      C7121()
    end
    if CL712[2] == true then
      C7122()
    end
    if CL712[3] == true then
      C7123()
    end
    if CL712[4] == true then
      C7124()
    end
    if CL712[5] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C7121()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C7122()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C7123()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(69)
  gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function C7124()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
  gg.setVisible(false)
end

function WHC720()
  CL720 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 720",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GRENN 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 720",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 720",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 720",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL720 == nil then
  else
    if CL720[1] == true then
      C7201()
    end
    if CL720[2] == true then
      C7202()
    end
    if CL720[3] == true then
      C7203()
    end
    if CL720[4] == true then
      C7204()
    end
    if CL720[5] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C7201()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C7202()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C7203()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(69)
  gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function C7204()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
  gg.setVisible(false)
end

function WHC820()
  CL820 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 820",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GRENN 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 820",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 820",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 820",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL820 == nil then
  else
    if CL820[1] == true then
      C8201()
    end
    if CL820[2] == true then
      C8202()
    end
    if CL820[3] == true then
      C8203()
    end
    if CL820[4] == true then
      C8204()
    end
    if CL820[5] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C8201()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("6;7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C8202()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C8203()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function C8204()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
  gg.setVisible(false)
end

function WHC835()
  CL835 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 835",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GRENN 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 835",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 835",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 835",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil,"𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL835 == nil then
  else
    if CL835[1] == true then
      C8351()
    end
    if CL835[2] == true then
      C8352()
    end
    if CL835[3] == true then
      C8353()
    end
    if CL835[4] == true then
      C8354()
    end
    if CL835[5] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C8351()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C8352()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(69)
  gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function C8353()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C8354()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("8,200;1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  
  gg.setVisible(false)
end

function WHC845()
  CL845 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 845",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GRENN 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 845",
    "??︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 845",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 845",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝙱𝚕𝚞𝚎 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 845",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL845 == nil then
  else
    if CL845[1] == true then
      C8451()
    end
    if CL845[2] == true then
      C8452()
    end
    if CL845[3] == true then
      C8453()
    end
    if CL845[4] == true then
      C8454()
    end
    if CL845[5] == true then
      C8455()
    end
    if CL845[6] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C8451()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("6;7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C8452()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C8453()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(69)
  gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function C8454()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C8455()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("1,194,344,481;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("8199", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function WHC855()
  CL855 = gg.multiChoice({
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚈𝚎𝚕𝚕𝚘𝚠 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 855",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GRENN 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 855",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 GREEN 𝚈𝚎𝚕𝚕𝚘𝚠\n╰➥ for 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 855",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝚁𝚎𝚍 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 855",
    "𒊹︎︎︎ 𝙲𝚘𝚕𝚘𝚛 𝙱𝚕𝚞𝚎 𝙱𝚘𝚍𝚢\n╰➥ For 𝚂𝚗𝚊𝙿𝚍𝚛𝚊𝚐𝚘𝚗 855",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil, "𝚆𝚊𝚕𝚕𝙷𝚊𝚌𝚔 ")
  if CL855 == nil then
  else
    if CL855[1] == true then
      C8551()
    end
    if CL855[2] == true then
      C8552()
    end
    if CL855[3] == true then
      C8553()
    end
    if CL855[4] == true then
      C8554()
    end
    if CL855[5] == true then
      C8555()
    end
    if CL855[6] == true then
      HME()
    end
    PUBGMH = -1
  end
end

function C8551()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("6;7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C8552()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8200;8201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("100", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(550292)
  gg.editAll("7", gg.TYPE_DWORD)
  
end

function C8553()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8200;8201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("100", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(550292)
  gg.editAll("7", gg.TYPE_DWORD)
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(63825)
  gg.editAll("6;7", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function C8554()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(63825)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.clearResults()
  gg.searchNumber("1,194,344,481;8,201:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function OTHERWH()
  MN3 = gg.multiChoice({
    "𒊹︎︎︎ 𝙴𝚡𝚢𝙽𝚘𝚜 7420\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙴𝚡𝚢𝙽𝚘𝚜 7570\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙴𝚡𝚢𝙽𝚘𝚜 7870\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙺ｪ𝚛ｪ𝚗 650\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙺ｪ𝚛ｪ𝚗 655\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙺ｪ𝚛ｪ𝚗 658\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙺ｪ𝚛ｪ𝚗 710\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙶90𝚃\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 P10\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍??",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 P22\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 P23\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 P60\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 P70\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 X20\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 X25\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙴𝚡𝚢𝙽𝚘𝚜 𝚁𝚎𝚍\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙴𝚡𝚢𝙽𝚘𝚜 𝚆𝚑ｪ𝚝𝚎\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙺𝚒𝚛𝚒𝚗 𝙶𝚛𝚎𝚎𝚗\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙺ｪ𝚛ｪ𝚗  𝚁𝚎𝚍\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙺ｪ𝚛ｪ𝚗 𝚆𝚑ｪ𝚝𝚎\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙺ｪ𝚛ｪ𝚗 𝚈𝚎𝚕𝚕𝚘𝚠\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 GREEN\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 𝚁𝚎𝚍\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 𝚈𝚎𝚕𝚕𝚘𝚠\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 𝚆𝚑ｪ𝚝𝚎\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 P22 GREEN\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 P22 𝚈𝚎𝚕𝚕𝚘𝚠\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 P60 𝙱𝚕𝚞𝚎\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 P60 𝚁𝚎𝚍\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "𒊹︎︎︎ 𝙼𝚎𝚍𝚒𝚊𝚃𝚎𝚔 P60 𝚈𝚎𝚕𝚕𝚘𝚠\n╰➥ Wh & 𝙲𝚘𝚕𝚘𝚛 𝙱𝚘𝚍𝚢",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
  }, nil,"BROS WALLHACK MENU")
  if MN3 == nil then
  else
    if MN3[1] == true then
      WE7420()
    end
    if MN3[2] == true then
      WE7570()
    end
    if MN3[3] == true then
      WE7870()
    end
    if MN3[4] == true then
      KIRIN650()
    end
    if MN3[5] == true then
      KIRIN655()
    end
    if MN3[6] == true then
      KIRIN658()
    end
    if MN3[7] == true then
      KIRIN710()
    end
    if MN3[8] == true then
      KIRIN970()
    end
    if MN3[9] == true then
      WMP10()
    end
    if MN3[10] == true then
      WMP22()
    end
    if MN3[11] == true then
      WMP23()
    end
    if MN3[12] == true then
      WMP60()
    end
    if MN3[13] == true then
      WMP70()
    end
    if MN3[14] == true then
      WMX20()
    end
    if MN3[15] == true then
      WMX25()
    end
    if MN3[16] == true then
      CER()
    end
    if MN3[17] == true then
      CEW()
    end
    if MN3[18] == true then
      CKG()
    end
    if MN3[19] == true then
      CKR()
    end
    if MN3[20] == true then
      CKW()
    end
    if MN3[21] == true then
      CKY()
    end
    if MN3[22] == true then
      CMG()
    end
    if MN3[23] == true then
      CMR()
    end
    if MN3[24] == true then
      CMY()
    end
    if MN3[25] == true then
      CMW()
    end
    if MN3[26] == true then
      CMP22G()
    end
    if MN3[27] == true then
      CMP22Y()
    end
    if MN3[28] == true then
      CMP60B()
    end
    if MN3[29] == true then
      CMP60R()
    end
    if MN3[30] == true then
      CMP60Y()
    end
    if MN3[31] == true then
      HME()
    end
  end
  PUBGMH = -1
end

function WE7420()
  
  gg.searchNumber("0.5;1.098618e-42;2.24207754e-44;2.69049305e-43;1.68155816e-44:645", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_FLOAT then
      i.value = "0"
      i.freeze = true
    end
  end
  gg.addListItems((gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.processResume()
  
end

function WE7570()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("360;0;0;0;-640;1;1;1;0;0;0;0;1;360;640;0.5;0;0;0;0.5;1;1;0;0;0;0;0;1;1;1;1;1,098618e-48:373", gg.TYPE_FLOAT)
  gg.searchNumber("0.5", gg.TYPE_FLOAT)
  t = gg.getResults(10)
  gg.editAll("50", gg.TYPE_FLOAT)
  t[1].value = "50"
  t[2].value = "50"
  t[3].value = "50"
  t[4].value = "50"
  t[5].value = "50"
  t[6].value = "50"
  t[1].freeze = true
  t[2].freeze = true
  t[3].freeze = true
  t[4].freeze = true
  t[5].freeze = true
  t[6].freeze = true
  print("addListItems: ", gg.addListItems(t))
  
end

function WE7870()
  
  gg.searchNumber("0.5;0;1;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.addListItems((gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)))
  
end

function KIRIN650()
  
  gg.clearResults()
  gg.searchNumber("8.4077908e-45;4.2038954e-45;1.5694543e-43;1.4012985e-45;2.8025969e-45;268.0;480.0;0.5:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_FLOAT then
      i.value = "1"
      i.freeze = true
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
  
end

function KIRIN658()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.5;1.4012985e-45;1.4012985e-45;3.8115318e-43;2.8025969e-45;2.2958874e-41:125", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_FLOAT then
      i.value = "20"
      i.freeze = true
    end
  end
  gg.addListItems((gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)))
  
end

function KIRIN710()
  local L0_105, L1_106, L2_107, L3_108, L4_109, L5_110, L6_111, L7_112, L8_113, L9_114, L10_115
end

function KIRIN970()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("8;16;32;48;40::169", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function WMP10()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("7.70714155e-44;5.15677835e-43;0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  gg.addListItems(var)
  gg.clearResults()
  
end

function WMP22()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4;4;2;6;5;5;1;1;1;3::769", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(1)
  gg.editAll("140", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  var[1].value = 140
  var[1].freeze = true
  gg.addListItems(var)
  
end

function WMP23()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("7.70714155e-44;5.15677835e-43;0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  gg.addListItems(var)
  gg.clearResults()
  
end

function WMP60()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5.1567783e-43;3.5873241e-43;3.2229865e-44;0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  gg.addListItems(var)
  gg.clearResults()
  
end

function WMP70()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.793662e-43;3.5873241e-43;1.1210388e-44;0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  var[1].value = 2
  var[1].freeze = true
  var[2].value = 2
  var[2].freeze = true
  var[3].value = 2
  var[3].freeze = true
  var[4].value = 2
  var[4].freeze = true
  var[5].value = 2
  var[5].freeze = true
  var[6].value = 2
  var[6].freeze = true
  var[7].value = 2
  var[7].freeze = true
  var[8].value = 2
  var[8].freeze = true
  var[9].value = 2
  var[9].freeze = true
  gg.addListItems(var)
  gg.clearResults()
  
end

function WMX20()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.5;360;640;1;1;1;-640;360::", gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("0", gg.POINTER_WRITABLE)
  var = gg.getResults(100)
  gg.addListItems(var)
  gg.clearResults()
  gg.clearResults()
  gg.searchNumber("56;64;48::35", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("47", gg.TYPE_DWORD)
  
end

function WMX25()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("640.0;360;0.5;0;640;360;0.5;12000;0.27913400531;0.56855899096::", gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.POINTER_WRITABLE)
  var = gg.getResults(100)
  gg.addListItems(var)
  gg.clearResults()
  
end

function CER()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("24;802824704;32;2::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("22", gg.TYPE_DWORD)
  
end

function CEW()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function CKG()
  
  gg.clearResults()
  gg.searchNumber("24;802824704;32;2:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("20", gg.TYPE_DWORD)
  gg.processResume()
  gg.clearResults()
  
end

function CKR()
  gg.clearResults()
  gg.searchNumber("24;802824704;32;2::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("22", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function CKW()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("40D;32D;16D;2D::37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("42", gg.TYPE_DWORD)
  
end

function CKY()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("36", gg.TYPE_DWORD)
  
end

function CMG()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("36", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function CMR()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("8;16;32;48;40::169", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.clearResults()
  
end

function CMY()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("36", gg.TYPE_DWORD)
  
end

function CMW()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  
end

function CMP22G()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;29;29;56:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("33", gg.TYPE_DWORD)
 
end

function CMP22Y()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;29;29;56:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("32", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("64;32;65;33:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("65", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("32", gg.TYPE_DWORD)
  
end

function CMP60B()
  
  gg.clearResults()
  gg.setRanges(4)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("802,824,192;48;937,041,920;40;736,370,688;32;802,824,192;48;802,824,192;16;802,824,192;2;2::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("28", gg.TYPE_DWORD)
  
end

function CMP60R()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.68155816e-44F;1.62092562e-12F;3162688022693019688Q;1.62092562e-12F;2.24207754e-44F:241", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("3162688022693019688", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("38", gg.TYPE_QWORD)
  
end

function CMP60Y()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.68155816e-44F;1.62092562e-12F;3162688022693019688Q;1.62092562e-12F;2.24207754e-44F:241", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("3162688022693019688", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("36", gg.TYPE_QWORD)
end

function MN3()
POX = _G["gg"]["multiChoice"]({"┌| ʟᴇss ʀᴇᴄᴏɪʟ\n╚❑[ˡᵒᵇᵇʸ]","┌| ɴᴏ ʀᴇᴄᴏɪʟ\n╚❑[ᵒʸᵘⁿ]","┌| ᴀɪᴍʙᴏᴛ 100ᴍ\n╚❑[ˡᵒᵇᵇʸ]","┌| ᴀɪᴍʙᴏᴛ 1000ᴍ\n╚❑[ᵒʸᵘⁿ","┌| ᴀɪᴍʟᴏᴄᴋ ɴᴇᴡ\n╚❑[ᵒʸᵘⁿ]","┌| Headshot ᴍᴇɴᴜ\n╚❑[ᵒʸᵘⁿ]","┌| ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ\n╚❑[ᵒʸᵘⁿ]","┌| ᴄʀᴏsʜᴀɪʀ\n╚❑[ᵒʸᵘⁿ]","🄶🄴🅁🄸"}, nil, "Bros Hack Team Menu")
if POX == nil then
else
if POX[1] == true then
LOB1()
end--ZİONS
if POX[2] == true then
LOB2()
end--ZİONS
if POX[3] == true then
LOB3()
end--ZİONS
if POX[4] == true then
LOB4()
end--ZİONS
if POX[5] == true then
LOB5()
end--ZİONS
if POX[6] == true then
LOB6()
end--ZİONS
if POX[7] == true then
LOB7()
end--ZİONS
if POX[8] == true then
LOB8()
end--ZİONS
if POX[9] == true then
HOME()
end--ZİONS
PUBGMH = -1
end
end

function LOB1()
  so=gg.getRangesList("libUE4.so")[1].start 
  py=0x1203DC4
  setvalue(so+py,4,0) 
   so=gg.getRangesList("libUE4.so")[1].start 
  py=0x13C0AB4
  setvalue(so+py,16,0) 
  so=gg.getRangesList("libUE4.so")[1].start 
  py=0x13C2D80
  setvalue(so+py,16,0) 
gg.toast("🎯LESS RECOİL🎯")
file:write(os.date("%d %m %Y - %H %M %S : Less Recoil Açıldı\n"))
end
function LOB2()
  gg.clearResults()
  so=gg.getRangesList('libUE4.so')[1].start  py=0x37CEB1C 
  setvalue(so+py,16,0)
  gg.clearResults()
  gg.clearResults()
  so=gg.getRangesList('libUE4.so')[1].start  py=0x387D280
  setvalue(so+py,16,0)
  gg.clearResults()
  so=gg.getRangesList("libUE4.so")[1].start 
  py=0x1203DC4
  setvalue(so+py,4,0) 
   so=gg.getRangesList("libUE4.so")[1].start 
  py=0x13C0AB4
  setvalue(so+py,16,0) 
  so=gg.getRangesList("libUE4.so")[1].start 
  py=0x13C2D80
  setvalue(so+py,16,0) 
gg.toast("🎯NO RECOİL🎯")
file:write(os.date("%d %m %Y - %H %M %S : No Recoil Açıldı\n"))
end

function LOB3()
  so=gg.getRangesList("libUE4.so")[1].start 
  py=0x263E4DC
  setvalue(so+py,16,0)
_G["gg"]["toast"]("Aimbot 100m")
file:write(os.date("%d %m %Y - %H %M %S : Aimbot 100m Açıldı\n"))
end--YEDİBELA

function LOB4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("3.5;1.0;0.5;0.10000000149;200.0::512", 16, false, 536870912, 0, -1)
gg.searchNumber("3.5;1.0;0.5;0.10000000149;200.0::512", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("999999", 16)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("3.5;1;0.5;200;20::", 16)
gg.getResults(200)
gg.editAll("999999999", 16)
gg.setRanges(32)
gg.searchNumber("6.0;2.0;1.0::99", 16, false, 536870912, 0, -1)
gg.searchNumber("1", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("101", 16)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("3.5;1;0.5;200;20::", 16)
gg.getResults(200)
gg.editAll("999999999", 16)
gg.clearResults()
gg.toast("☬ Ultra Aimbot ☬")
file:write(os.date("%d %m %Y - %H %M %S : Ultra Aimbot Açıldı\n"))
end

function LOB5()
_G["gg"]["searchNumber"]("999", 16, false, 536870912, 0, -1)
_G["gg"]["clearResults"]()
_G["gg"]["setRanges"](32)
_G["gg"]["clearResults"]()
_G["gg"]["clearResults"]()
_G["gg"]["searchNumber"]("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
_G["gg"]["searchNumber"]("3.5;1;200;20", 16, false, 536870912, 0, -1)
_G["gg"]["getResults"](300)
_G["gg"]["editAll"]("1.0e20", 16)
_G["gg"]["toast"]("Aimlock")
file:write(os.date("%d %m %Y - %H %M %S : Aim Lock Açıldı\n"))

end--YEDİBELA

function LOB6()
REX = _G["gg"]["multiChoice"]({"ʜᴇᴛsʜᴏᴛ 30%\n","┌|ʜᴇᴛsʜᴏᴛ 50%\n","┌|ʜᴇᴛsʜᴏᴛ 75%\n","┌|ʜᴇᴛsʜᴏᴛ 95%\n","GERİ"}, nil, "👑BROS TEAM👑")
if REX == nil then
else
if REX[1] == true then
HS1()
end--YEDİBELA
if REX[2] == true then
HS2()
end--YEDİBELA
if REX[3] == true then
HS3()--YEDİBELA
end
if REX[4] == true then
HS4()--YEDİBELA
end
BOSS = -1
end--YEDİBELA
end
function HS1()
_G["gg"]["clearResults"]()
_G["gg"]["setRanges"](gg.REGION_ANONYMOUS)
_G["gg"]["searchNumber"]("9.20161819458;23;25;30.5", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
_G["gg"]["getResultCount"]()
_G["gg"]["searchNumber"]("25;30.5", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
_G["gg"]["getResults"](10)
_G["gg"]["editAll"]("60", gg["TYPE_FLOAT"])
_G["gg"]["clearResults"]()
_G["gg"]["toast"]("Headshot 30%")
file:write(os.date("%d %m %Y - %H %M %S : Head Shot %30 Açıldı\n"))
end--YEDİBELA

function HS2()
_G["gg"]["clearResults"]()
_G["gg"]["setRanges"](gg.REGION_BAD)
_G["gg"]["searchNumber"]("-88.66608428955;26:512", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
_G["gg"]["searchNumber"]("26", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
_G["gg"]["getResults"](2)
_G["gg"]["editAll"]("-460", gg["TYPE_FLOAT"])
_G["gg"]["clearResults"]()
_G["gg"]["searchNumber"]("-88.73961639404;28:512", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
_G["gg"]["searchNumber"]("28", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
_G["gg"]["getResults"](2)
_G["gg"]["editAll"]("-560", gg["TYPE_FLOAT"])
_G["gg"]["clearResults"]()
_G["gg"]["setRanges"](gg.REGION_ANONYMOUS)
_G["gg"]["searchNumber"]("9.201618;30.5;25", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
_G["gg"]["searchNumber"]("25;30.5", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
_G["gg"]["getResults"](10)
_G["gg"]["editAll"]("100", gg["TYPE_FLOAT"])
_G["gg"]["clearResults"]()
_G["gg"]["toast"]("Headshot 50%")
file:write(os.date("%d %m %Y - %H %M %S : Head Shot %50 Açıldı\n"))
end--YEDİBELA

function HS3()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
  gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("8", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-460", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("250", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
  gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)                                                                                                                                                                                                                                                                                                                                                                                                               --@AeroHackTeam
  gg.getResults(99)
  gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("220", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("23;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("699", gg.TYPE_FLOAT)
  gg.clearResults()
_G["gg"]["toast"]("headshot 75%")
file:write(os.date("%d %m %Y - %H %M %S : Head Shot %75 Açıldı\n"))
end--YEDİBELA

function HS4()
file:write(os.date("%d %m %Y - %H %M %S : Head Shot %95 Açıldı\n"))
_G["gg"]["clearResults"]()
_G["gg"]["setRanges"](32)
_G["gg"]["searchNumber"]("25;30.5", 16, false, 536870912, 0, -1)
_G["gg"]["getResults"](10)
_G["gg"]["editAll"]("999999", 16)
_G["gg"]["clearResults"]()
_G["gg"]["toast"]("Headshot 95%")
end--YEDİBELA

function LOB7()
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x14D7980
  setvalue(so+py,16,0.6)
  so = gg.getRangesList('libUE4.so')[1].start
  py = 0x3CB24780
  setvalue(so+py,16,50)
_G["gg"]["toast"]("Magic Bullet Aktif")
file:write(os.date("%d %m %Y - %H %M %S : Magic Bullet Açıldı\n"))
end--YEDİBELA

function LOB8()
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x13C4A40
  setvalue(so+py,16,90)
_G["gg"]["toast"]("Small Crosshair")
file:write(os.date("%d %m %Y - %H %M %S : Small Crosshair Açıldı\n"))
end--YEDİBELA

function MN4()
oxl = gg["multiChoice"]({"┌| ᴀɴᴛᴇɴ\n ╚❑[ˡᵒᵇᵇʸ]","┌| ɪᴘᴀᴅ ᴍᴏᴅ\n ╚❑[ᵒʸᵘⁿ]","┌| ᴄɪᴍᴇɴʟᴇʀɪ ᴋᴀʟᴅɪʀ\n╚❑[ˡᵒᵇᵇʸ]","┌| sɪsʟᴇʀɪ ᴋᴀʟᴅɪʀ\n╚❑[ᵒʸᵘⁿ]","┌| sɴɪᴘᴇʀ ᴏᴛᴏᴍᴀᴛɪᴋ\n╚❑[ᵒʸᵘⁿ]","┌| ʏᴜᴋsᴇᴋ ᴢɪᴘʟᴀᴍᴀ\n╚❑[ᵒʸᵘⁿ]","┌| sɪʏᴀʜ ɢᴏᴋʏᴜᴢᴜ\n╚❑[ᵒʸᵘⁿ]","┌| ᴀʀᴀʙᴀ ᴜᴄᴍᴀ ᴍᴇɴᴜ\n╚❑[ᵒʸᵘⁿ]","┌| ʜɪᴢʟɪ ᴘᴀʀᴀsᴜᴛ\n╚❑[ᵒʸᵘⁿ]","┌| SessizAyaklar\n╚❑[ᵒʸᵘⁿ]","🄶🄴🅁🄸"}, nil, "🗡️BROS TEAM🗡️")
if oxl == nil then else
if oxl[1] == true then
OYUN1()
end
if oxl[2] == true then
OYUN2()
end
if oxl[3] == true then
OYUN3()
end
if oxl[4] == true then
OYUN4()
end
if oxl[5] == true then
OYUN5()
end
if oxl[6] == true then
OYUN6()
end
if oxl[7] == true then
OYUN7()
end
if oxl[8] == true then
OYUN8()
end
if oxl[9] == true then
OYUN10()
end
if oxl[10] == true then
OYUN20()
end
if oxl[10] == true then
HOME()
end
end
BOSS = -1
end
function OYUN20()
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
  end
function OYUN1(...)
  gg.clearResults()
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1950038955_3090_0.12.0.11023_20190425070710_1400806008_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1950038955_3090_0.12.0.11023_20190425070710_1400806008_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1950038955_3090_0.12.0.11023_20190425070710_1400806008_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1950038955_3090_0.12.0.11023_20190425070710_1400806008_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/VipCodees")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
gg["toast"]("Antena")
file:write(os.date("%d %m %Y - %H %M %S : Anten Açıldı\n"))
end

function OYUN2(...)
  so = gg.getRangesList("libUE4.so")[1].start
  py = 59245136
  setvalue(so + py, 16, 230)
gg["toast"]("İpadWiew On")
file:write(os.date("%d %m %Y - %H %M %S : İpad Wiev Açıldı\n"))
end

function OYUN3(...)
  so=gg.getRangesList ('libUE4.so') [1] .start
  py=39898728
  setvalue(so+py,16,0)
  gg.clearResults()
  gg.toast("ACTİVE")
  file:write(os.date("%d %m %Y - %H %M %S : Çimen Kaldırma Açıldı\n"))	
end

function OYUN4(...)
gg["setVisible"](false)
gg["clearResults"]()
gg["setRanges"](gg["REGION_CODE_APP"])
gg["setVisible"](false)
gg["searchNumber"]("-298,841,535D;-8.32321416e22", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["setVisible"](false)
gg["refineNumber"]("-298,841,535", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg["setVisible"](false)
gg["refineAddress"]("098", -1, gg["TYPE_DWORD"], gg["SIGN_EQUAL"], 0, -1)
gg["setVisible"](false)
gg["getResults"](1)
gg["setVisible"](false)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["setVisible"](false)
gg["clearResults"]()
gg["setVisible"](false)
gg["toast"]("Sis Yok")
file:write(os.date("%d %m %Y - %H %M %S : Sis Kaldırma Açıldı\n"))	
end

function OYUN5(...)
gg.alert("Use gun after open")
REX = gg["multiChoice"]({"┌| ᴀᴡᴍ ʜɪᴢʟɪ ᴀᴛɪs\n╚❑","┌| ᴋᴀʀ98 ʜɪᴢʟɪ ᴀᴛɪs\n╚❑","┌| M24 ʜɪᴢʟɪ ᴀᴛɪs\n╚❑","🄶🄴🅁🄸"}, nil, "YEDİBELA TEAM")
if REX == nil then
else
if REX[1] == true then
NO1()
end
if REX[2] == true then
NO2()
end
if REX[3] == true then 
NO4()
end
if REX[4] == true then
HOME()
end
end
BOSS = -1
end
function NO4()
gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("79000;1.79999995232;1.70000004768", 16, false, 536870912, 0, -1)
    gg.searchNumber("1.79999995232;1.70000004768", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("0.1", 16)
end
function NO1(...)
gg["clearResults"]()
gg["setRanges"](gg["REGION_ANONYMOUS"])
gg["searchNumber"]("91000;2.29999995232;1.8", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("2.29999995232;1.8", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](15)
gg["editAll"]("0", gg["TYPE_FLOAT"])
gg["toast"]("Awm Hizli atiş")
file:write(os.date("%d %m %Y - %H %M %S : Awm Hızlı Atış Açıldı\n"))
end

function NO2(...)
gg["clearResults"]()
gg["setRanges"](gg["REGION_ANONYMOUS"])
gg["searchNumber"]("128D;-1D;1.7;0.3::100", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("1.7", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](10)
gg["editAll"]("0", gg["TYPE_FLOAT"])
gg["setRanges"](gg["REGION_ANONYMOUS"])
gg["searchNumber"]("76000;5D;1.89999997616;0.1::50", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("1.89999997616", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](10)
gg["editAll"]("0", gg["TYPE_FLOAT"])
gg["toast"]("Kar98 Hizli atiş")
gg["clearResults"]()
file:write(os.date("%d %m %Y - %H %M %S : Kar98 Hızlı Atış Açıldı\n"))	
end

function OYUN6(...)
  so=gg.getRangesList("libUE4.so")[1].start
  py=0x11EC358
  setvalue(so+py,4,-289990143)
  gg.toast("Long jump Activated✓✓")
  file:write(os.date("%d %m %Y - %H %M %S : Long Jump Açıldı\n"))
end

function OYUN7(...)
so = gg.getRangesList('libUE4.so')[1].start
py = 0x2E4C108
setvalue(so+py,16,10)
gg.toast("BLACK BODY ")
file:write(os.date("%d %m %Y - %H %M %S : Black Body Açıldı\n"))
end

function OYUN8(...)
GAMAT = gg["multiChoice"]({"♕ ᴊᴇᴇᴘ Jump","♕ ᴅᴀᴄɪᴀ Jump ","🚗 ᴅᴀᴄɪᴀ Jump","🏍️ ᴍᴏᴛᴏʀ Jump","🄶🄴🅁🄸"}, nil, "💀BROS CHANNEL SCRİPT💀")
if GAMAT == nil then
else
if GAMAT[1] == true then
D1()
end
if GAMAT[2] == true then
D2()
end
if GAMAT[3] == true then
D3()
end
if GAMAT[4] == true then
D4()
end
if GAMAT[5] == true then
HOME()
end
BOSS = -1
end
end

function D1(...)
GAMAT = gg["multiChoice"]({"ᴊᴇᴇᴘ ᴜᴄᴜʀ[ᵃᶜ]","ᴊᴇᴇʟ ᴜᴄᴜʀ[ᵏᵃᵖᵃᵗ]","🄶🄴🅁🄸"}, nil, "👑ByMisakiMey👑")
if GAMAT == nil then
else
if GAMAT[1] == true then
JON()
end
if GAMAT[2] == true then
JOFF()
end
if GAMAT[3] == true then
HOME()
end
BOSS = -1
end
end

function JON(...)
gg["clearResults"]()
gg["setRanges"](gg["REGION_ANONYMOUS"])
gg["searchNumber"]("0.00055555557;49.9999961853;24.99999809265", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("0.00055555557", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](10)
gg["editAll"]("0.00455555557", gg["TYPE_FLOAT"])
gg["toast"]("Jeep Ucur")
file:write(os.date("%d %m %Y - %H %M %S : Jeep Uçur Açıldı\n"))	
end

function JOFF(...)
gg["clearResults"]()
gg["setRanges"](gg["REGION_ANONYMOUS"])
gg["searchNumber"]("0.00455555557", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("0.00455555557", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](10)
gg["editAll"]("0.00055555557", gg["TYPE_FLOAT"])
gg["toast"]("Jeep Ucurma kapali")
file:write(os.date("%d %m %Y - %H %M %S : Jeep Uçurma Kapalı\n"))	
end

function D2(...)
gg["clearResults"]()
gg["processResume"]()
gg["searchNumber"]("30;6;22050", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1, 0)
gg["refineNumber"]("30;6;22050", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1, 0)
gg["refineNumber"]("30;6;22050", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1, 0)
gg["refineNumber"]("30;6;22050", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1, 0)
revert = gg["getResults"](61, nil, nil, nil, nil, nil, nil, nil, nil)
gg["editAll"]("999", gg["TYPE_FLOAT"])
gg["processResume"]()
if revert ~= nil then
gg["setValues"](revert)
end
gg["clearResults"]()
gg["toast"]("Dacia uçur")
file:write(os.date("%d %m %Y - %H %M %S : Dacia Uçur Açıldı\n"))
end

function D3(...)
gg["clearResults"]()
gg["setRanges"](32)
gg["searchNumber"]("0.647058857", 16, false, 536870912, 0, -1)
gg["getResults"](30)
gg["editAll"]("-180", 16)
gg["clearResults"]()
gg["toast"]("Dacia Hiz")
file:write(os.date("%d %m %Y - %H %M %S : Dacia Hız Açıldı\n"))	
end

function D4(...)
gg["clearResults"]()
gg["setRanges"](gg["REGION_ANONYMOUS"])
gg["searchNumber"]("0.37209302187;0.69999998808;1::9", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("0.37209302187;0.69999998808::5", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("0.37209302187;0.69999998808::5", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["searchNumber"]("0.37209302187;0.69999998808::5", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](50)
gg["editAll"]("30.241295", gg["TYPE_FLOAT"])
gg["clearResults"]()
gg["toast"]("Motor Hiz")
file:write(os.date("%d %m %Y - %H %M %S : Motor Hız Açıldı\n"))	
end

function OYUN9(...)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.75926053e21;-7.00649232e-45;4.83304807e21::12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-7.00649232e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("5444", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.88840463e21;-3.12839322e-39;5.09131994e21::12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.12839322e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("5444", gg.TYPE_FLOAT)
gg.toast("🗡️İTEM WALL HACK AKTİF 🗡️")
file:write(os.date("%d %m %Y - %H %M %S : İtem Wall Hack Açıldı\n"))
end--๖̶̶̶ۣۣۜۜ͜ζ͜͡DarkEarl

function OYUN10(...)
gg["clearResults"]()
gg["setRanges"](32)
gg["searchNumber"]("1024", 16)
resultCounts = gg["getResultsCount"]()
STM1 = gg["getResults"](resultCounts)
for i = 1, resultCounts do
values = {}
values[1] = {}
values[1].address = STM1[i].address - 4
values[1].flags = 16
values = gg["getValues"](values)
if values[1].value == 5000 then
values = {}
values[1] = {}
values[1].address = STM1[i].address - 8
values[1].flags = 16
values = gg["getValues"](values)
if values[1].value == 3000 then
values = {}
values[1] = {}
values[1].address = STM1[i].address - 12
values[1].flags = 16
values = gg["getValues"](values)
if values[1].value == 0.5 then
setvalues = {}
setvalues[1] = {}
setvalues[1].address = STM1[i].address
setvalues[1].flags = 16
setvalues[1].value = 200000
setvalues[2] = {}
setvalues[2].address = STM1[i].address - 4
setvalues[2].flags = 16
setvalues[2].value = 200000
setvalues[3] = {}
setvalues[3].address = STM1[i].address - 8
setvalues[3].flags = 16
setvalues[3].value = 200000
setvalues[4] = {}
setvalues[4].address = STM1[i].address - 12
setvalues[4].flags = 16
setvalues[4].value = 200000
gg["setValues"](setvalues)
gg["toast"]("Speed parachute")
file:write(os.date("%d %m %Y - %H %M %S : Hızlı Paraşüt Açıldı\n"))	
end
end
end
end
end

function EXIT()
print("Bros Hack Team ")
    print("BrosTeam")
    print("Bros Team")
    print("☆☆☆☆☆☆☆☆☆☆☆☆☆")
    print("❤ Thank you |Coder ByMisakiMey| 🎭")
    print("☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆")
    print("🈯️ Script Pubg Version 1.3.0 💡")
    print("🎵 Telegram Me : ⟬ @BrosHackTeam ⟭ ")
    print("🔔 Telegram Channel : ⟬ @BrosHackChat ⟭ ➰")
    print("OWNER @officialalfa & @ByMisakiMey")
    gg.setVisible(true)
    file:write(os.date("%d %m %Y - %H %M %S : Script Kapatıldı!\n"))
    file:write("\n                  ⟬ @BrosHackTeam ⟭")
    file:write("\n\nLog Tutuldu!\nCoder:𝐁𝐲:𝐀𝐥𝐟𝐚\nTelegram:@OfficialAlfaa\nTelegram:@ByMisakiMey\nChannel:@BrosHackTeam\nOwner: @OfficialAlfaa & @ByMisakiMey")
    file:write("\n██████╗░██████╗░░█████╗░░██████╗\n██╔══██╗██╔══██╗██╔══██╗██╔════╝\n██████╦╝██████╔╝██║░░██║╚█████╗░\n██╔══██╗██╔══██╗██║░░██║░╚═══██╗\n██████╦╝██║░░██║╚█████╔╝██████╔╝\n╚═════╝░╚═╝░░╚═╝░╚════╝░╚═════╝░\n")
    file:write("\n██╗░░██╗░█████╗░░█████╗░██╗░░██╗\n██║░░██║██╔══██╗██╔══██╗██║░██╔╝\n███████║███████║██║░░╚═╝█████═╝░\n██╔══██║██╔══██║██║░░██╗██╔═██╗░\n██║░░██║██║░░██║╚█████╔╝██║░╚██╗\n╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝\n")
    file:close()
    os.exit()
end

while true do
  if gg.isVisible(true) then
    PUBGMH = 1
    gg.setVisible(false)
  end
  if PUBGMH == 1 then
    HOME()
end
end
