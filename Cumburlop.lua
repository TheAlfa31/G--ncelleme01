ProgressBar =  "║░░░░░░░░░░░░░░░║";for x = 1,20,1 do gg.sleep(1000) ProgressBar = ProgressBar:gsub("░","▓",1);gg.toast(ProgressBar) end gg.sleep(100) 
gg.sleep(500)
if antiban_checkerer == off then
 antiban_checkerer = on
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196,864;16,842,753::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
if gg.getResultCount() == 0 then
gg.alert("⛔ 𝙱𝚈𝙿𝙰𝚂𝚂 Açılmadı ⛔\n Oyunu tekrar Başlat")
gg.processKill()
os.exit()
else
gg.searchNumber("196,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n = gg.getResultCount()
jz = gg.getResults(n)
for i = 1, n do
gg.addListItems({[1] = {address = jz[i].address + 236,flags = 4,freeze = true,value = 16384}})
gg.addListItems({[1] = {address = jz[i].address + 232,flags = 4,freeze = true,value = 16384}})
gg.addListItems({[1] = {address = jz[i].address + 228,flags = 4,freeze = true,value = 16384}})
gg.addListItems({[1] = {address = jz[i].address + 340,flags = 4,freeze = true,value = 16384}})
gg.addListItems({[1] = {address = jz[i].address + 344,flags = 4,freeze = true,value = 16384}})
end
end
gg.clearList()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("144387;130000~139999", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135682;133378", gg.TYPE_DWORD)
gg.refineNumber("135682", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133378;134658", gg.TYPE_DWORD)
gg.refineNumber("133378", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134658;133634", gg.TYPE_DWORD)
gg.refineNumber("134658", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133634;134914", gg.TYPE_DWORD)
gg.refineNumber("133634", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134914;131330", gg.TYPE_DWORD)
gg.refineNumber("134914", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131330;131331", gg.TYPE_DWORD)
gg.refineNumber("131330", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131331;131586", gg.TYPE_DWORD)
gg.refineNumber("131331", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131586;131842", gg.TYPE_DWORD)
gg.refineNumber("131586", gg.TYPE_DWORD)
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
gg.searchNumber("132098;133635", gg.TYPE_DWORD)
gg.refineNumber("132098", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("✓™ZERO HACK 🔥\n")
gg.clearList()
end
gg.alert("🛡️𝐀𝐧𝐭𝐢 𝐁𝐚𝐧🛡️")
