file = io.open("BrosHackLOG.log","w")
file:write("???????? ????????\n???????? ????????\n???????? ????????\n????:???????? Tarafından Kodlanmıştır...\nLog Sistemi Aktif!\nTelegram: @BrosHackTeam\nTelegram: @BrosHackTeam\n\n\n")	

date = os.date("%d %m %Y - %H %M %S")

file:write(os.date("%d %m %Y - %H %M %S : Script Çalıştırıldı!\n"))


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed To Open") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed To Open") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "Successfully Opened, Modified In Total" .. xgsl .. "Article Data") else gg.toast(qmnb[2]["name"] .. "Failed To Open") end end end end
function SearchWrite(Search, Write, Type) gg.clearResults()  gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base  local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end if (#data > 0) then gg.toast("found"..#data.."Article data") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type  t[#t].value = w[1]  if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("No data found") return false  end end
function SearchWrite(Search, Write, Type)    gg.clearResults()        gg.searchNumber(Search[1][1], Type)    local count = gg.getResultCount()    local result = gg.getResults(count)    gg.clearResults()    local data = {}     local base = Search[1][2]    if (count > 0) then        for i, v in ipairs(result) do            v.isUseful = true         end        for k=2, #Search do            local tmp = {}            local offset = Search[k][2] - base             local num = Search[k][1]                         for i, v in ipairs(result) do                tmp[#tmp+1] = {}                 tmp[#tmp].address = v.address + offset                  tmp[#tmp].flags = v.flags              end            tmp = gg.getValues(tmp)             for i, v in ipairs(tmp) do                if ( tostring(v.value) ~= tostring(num) ) then                    result[i].isUseful = false                 end            end        end        for i, v in ipairs(result) do            if (v.isUseful) then                data[#data+1] = v.address            end        end        if (#data > 0) then           local t = {}           local base = Search[1][2]           for i=1, #data do               for k, w in ipairs(Write) do                   offset = w[2] - base                   t[#t+1] = {}                   t[#t].address = data[i] + offset                   t[#t].flags = Type                   t[#t].value = w[1]                   if (w[3] == true) then                      local item = {}                       item[#item+1] = t[#t]                       item[#item].freeze = true                       gg.addListItems(item)                   end                                 end           end           gg.setValues(t)           gg.addListItems(t)        else            gg.toast("ITZX7", false)            return false        end    else        gg.toast("V????s N?? F????")        return false    end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end



gg.setVisible(false)
gg.sleep(200)
gg.toast("????????HOŞGELDİN????????")
gg.setVisible(true)
PUBGMH = -1


function HOME()
MENU = gg.choice({
           "?????Antiban\n  ?[Lobi+Bekleme Alanı+Oyun]",
           "????Duvar Hilesi Menü\n ?[Oyun]",
           "????Silah Hilesi Menü\n?[Oyun]",
           "????Oyun Hileleri Menü\n?[Lobi+Oyun]",
           "????Diğer Hileler\n?[Oyun]",
           "?????Kıyafet & Desen Hileleri\n?[Lobi]",
           "???Hileden Çıkış Yap"
}, nil, "??Bros Hack Script??")
    if MENU == nil then
  else
    if MENU == 1 then
MN1()
    end
    if MENU == 2 then
HME()
    end
    if MENU == 3 then 
SILAHMENU()
    end
    if MENU == 4 then
MN4()
    end
    if MENU == 5 then 
MN5()
    end
    if MENU == 6 then 
MN77()
      end
    if MENU == 7 then 
EXIT()
    end
   if MENU == 8 then
VIP()
    end

end
  PUBGMH = -1
end

function MN5()
alfa=gg.choice({
	'??Uzun Paraşüt[UÇAK]??',
	'??Wall Jump[OYUN]??',
	'??Bullet Track[OYUN]??',
	'??Geri??'
},nil,'OTHER MENÜ BROS HACK')

if alfa == 1 then
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.75;150;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("0.75;150;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  file:write(os.date("%d %m %Y - %H %M %S : Uzun Paraşüt Açıldı\n"))	
end


if alfa == 2 then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4890205508990664704", gg.TYPE_QWORD)
WALLJUMPOFF = gg.getResults(100)
gg.editAll("4890205509012684800", gg.TYPE_QWORD)
gg.toast("Wall Jump")
file:write(os.date("%d %m %Y - %H %M %S : Wall Jump Açıldı\n"))	
end


if alfa == 3 then
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3C491D0
setvalue(so+py,16,0)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-476053504", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-1903895621994000382", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1C113E8
setvalue(so+py,4,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x270D07C
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x136BDDC
setvalue(so+py,4,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x381CCE0
setvalue(so+py,4,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x376E57C
setvalue(so+py,4,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x136D4F8
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2559FE8
setvalue(so+py,4,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x381FCB0
setvalue(so+py,16,254.70928955078)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-476047874;-393411840;-509599738;-443740152;-509603833;-476041216::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0,-1)
gg.refineNumber("-476047874", gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("-476047889", gg.TYPE_DWORD)
gg.clearResults()
so=gg.getRangesList('libUE4.so')[1].start
py=0x39279FC
setvalue(so+py,4,0)
gg.toast("Bullet Track @ByMisakiMey & @BrosHackTeam")
end

if alfa == 4 then
HOME()
end
end

function MN77()
gg.alert("?Yakında Gelecek?")
end

function MN1() 
BROS = gg["multiChoice"]({"???Premium Anti Ban[LOBİ]???","??? Log Clean[OYUN]","??? 3. Parti Ban Kaldır???","???Report Engelle[Bekleme Alanı+Uçak]???","??GERİ??"}, nil, "??BROS HACK ANTİ BAN MENÜ??")
if BROS == nil then
else
  if BROS[1] == true then
    bypass()
  end
  if BROS[2]== true then
   log()
  end
  if BROS[3] == true then 
  anti3()
  end
 if BROS[4] == true then
 reportblock()
 end
 if BROS[5] == true then
 HOME()
end

end
PUBGMH = -1
end


function reportblock()
report=gg.alert("?Rotlumusun Rootsuzmu?","Rootluyum","Rootsuzum")
if report == 1 then
function split(___M___a___x___i___m___a___FullString, ___M___a___x___i___m___a___Separator) local nFindStartIndex = 1
local nSplitIndex = 1 local nSplitArray = {} while true do
local nFindLastIndex = string.find(___M___a___x___i___m___a___FullString, ___M___a___x___i___m___a___Separator, nFindStartIndex) if not nFindLastIndex then
nSplitArray[nSplitIndex] = string.sub(___M___a___x___i___m___a___FullString, nFindStartIndex, string.len(___M___a___x___i___m___a___FullString))
break end nSplitArray[nSplitIndex] = string.sub(___M___a___x___i___m___a___FullString, nFindStartIndex, nFindLastIndex - 1)
nFindStartIndex = nFindLastIndex + string.len(___M___a___x___i___m___a___Separator)
nSplitIndex = nSplitIndex + 1 end return nSplitArray end
function __Telegram__MaximaServer___(___Telegram__MaximaServer___, __Telegram__MaximaServer__)
for x = 1, #(__Telegram__MaximaServer__) do
__Telegram___MaximaServer__ = ___Telegram__MaximaServer___ + __Telegram__MaximaServer__[x]["offset"]
___Telegram__MaximaServer_ = __Telegram__MaximaServer__[x]["type"]
_Telegram__MaximaServer___ = __Telegram__MaximaServer__[x]["value"]
gg.setValues({[1] = {address = __Telegram___MaximaServer__, flags = ___Telegram__MaximaServer_, value = _Telegram__MaximaServer___}})
___Telegram__MaximaServer__ = ___Telegram__MaximaServer__ + 1
end end function Telegram_MaximaServer(Telegram__MaximaServer)
gg.clearResults() gg.setRanges(Telegram__MaximaServer[1]["memory"])
gg.searchNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
if gg.getResultCount() == 0
then gg.toast(Telegram__MaximaServer[2]["name"] .. "Failed to open")
else gg.refineNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
gg.refineNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
gg.refineNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
if gg.getResultCount() == 0
then gg.toast(Telegram__MaximaServer[2]["name"] .. "Failed to open")
else __M___a___x___i___m___a__ = gg.getResults(999999)
___M___a___x___i___m___a___ = gg.getResultCount()
___Telegram__MaximaServer__ = 0 if ___M___a___x___i___m___a___ > 999999
then ___M___a___x___i___m___a___ = 999999
end for i = 1, ___M___a___x___i___m___a___ do
_Telegram___MaximaServer___ = true for v = 4, #(Telegram__MaximaServer) do
if _Telegram___MaximaServer___ == true
then Telegram___MaximaServer___ = {} Telegram___MaximaServer___[1] = {}
Telegram___MaximaServer___[1].address = __M___a___x___i___m___a__[i].address + Telegram__MaximaServer[v]["offset"]
Telegram___MaximaServer___[1].flags = Telegram__MaximaServer[v]["type"]
___Telegram__MaximaServer___ = gg.getValues(Telegram___MaximaServer___)
__M__a__x__i__m__a__ = Telegram__MaximaServer[v]["lv"] .. ";" .. ___Telegram__MaximaServer___[1].value
Telegram___MaximaServer = split(__M__a__x__i__m__a__, ";")
___Telegram___MaximaServer = Telegram___MaximaServer[1]
Telegram___MaximaServer___M__a__x__i__m__a__ = Telegram___MaximaServer[2]
if ___Telegram___MaximaServer == Telegram___MaximaServer___M__a__x__i__m__a__
then ___Telegram___MaximaServer__ = true
_Telegram___MaximaServer___ = true
else ___Telegram___MaximaServer__ = false
_Telegram___MaximaServer___ = false end end
end if ___Telegram___MaximaServer__ == true then
___Telegram__MaximaServer___ = __M___a___x___i___m___a__[i].address
__Telegram__MaximaServer___(___Telegram__MaximaServer___, __Telegram__MaximaServer__)
___Telegram___MaximaServer_ = true end end
if ___Telegram___MaximaServer_ == true then
gg.toast(Telegram__MaximaServer[2]["name"] .. "Successfully Modified" .. ___Telegram__MaximaServer__ .. "Values")
else gg.toast(Telegram__MaximaServer[2]["name"] .. "Failed to open") end end end end
function split(___M___a___x___i___m___a___FullString, ___M___a___x___i___m___a___Separator)
local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do
local nFindLastIndex = string.find(___M___a___x___i___m___a___FullString, ___M___a___x___i___m___a___Separator, nFindStartIndex)
if not nFindLastIndex then
nSplitArray[nSplitIndex] = string.sub(___M___a___x___i___m___a___FullString, nFindStartIndex, string.len(___M___a___x___i___m___a___FullString))
break end nSplitArray[nSplitIndex] = string.sub(___M___a___x___i___m___a___FullString, nFindStartIndex, nFindLastIndex - 1)
nFindStartIndex = nFindLastIndex + string.len(___M___a___x___i___m___a___Separator)
nSplitIndex = nSplitIndex + 1 end return nSplitArray end
function __Telegram__MaximaServer___(___Telegram__MaximaServer___, __M__a__x__i__m__a___1)
for x = 1, #(__M__a__x__i__m__a___1) do
__Telegram___MaximaServer__ = ___Telegram__MaximaServer___ + __M__a__x__i__m__a___1[x]["address"]
___Telegram__MaximaServer_ = __M__a__x__i__m__a___1[x]["flags"]
_Telegram__MaximaServer___ = __M__a__x__i__m__a___1[x]["value"]
__Telegram___MaximaServer___ = __M__a__x__i__m__a___1[x]["freeze"]
if __Telegram___MaximaServer___ == nil or __Telegram___MaximaServer___ == "" then
gg.setValues({[1] = {address = __Telegram___MaximaServer__, flags = ___Telegram__MaximaServer_, value = _Telegram__MaximaServer___}}) else
gg.addListItems({[1] = {address = __Telegram___MaximaServer__, flags = ___Telegram__MaximaServer_, freeze = __Telegram___MaximaServer___, value = _Telegram__MaximaServer___}})
end ___Telegram__MaximaServer__ = ___Telegram__MaximaServer__ + 1
___Telegram___MaximaServer_ = true end end
function __M__a__x__i__m__a___Q(__M__a__x__i__m__a___)
gg.setRanges(__M__a__x__i__m__a___[1]["memory"])
gg.searchNumber(__M__a__x__i__m__a___[3]["value"], __M__a__x__i__m__a___[3]["flags"])
if gg.getResultCount() == 0 then
gg.toast(__M__a__x__i__m__a___[2]["Projects"] .. "Load failed") else
gg.refineNumber(__M__a__x__i__m__a___[3]["value"], __M__a__x__i__m__a___[3]["flags"])
gg.refineNumber(__M__a__x__i__m__a___[3]["value"], __M__a__x__i__m__a___[3]["flags"])
gg.refineNumber(__M__a__x__i__m__a___[3]["value"], __M__a__x__i__m__a___[3]["flags"])
if gg.getResultCount() == 0 then
gg.toast(__M__a__x__i__m__a___[2]["Projects"] .. "Load failed")
else __M___a___x___i___m___a__ = gg.getResults(999999)
___M___a___x___i___m___a___ = gg.getResultCount()
___Telegram__MaximaServer__  =  0
if ___M___a___x___i___m___a___ > 999999 then
___M___a___x___i___m___a___ = 999999 end
for i = 1, ___M___a___x___i___m___a___ do
_Telegram___MaximaServer___ = true
for v = 4, #(__M__a__x__i__m__a___) do
if _Telegram___MaximaServer___ == true then
Telegram___MaximaServer___ = {}
Telegram___MaximaServer___[1] = {}
Telegram___MaximaServer___[1].address = __M___a___x___i___m___a__[i].address + __M__a__x__i__m__a___[v]["address"]
Telegram___MaximaServer___[1].flags = __M__a__x__i__m__a___[v]["flags"]
___Telegram__MaximaServer___ = gg.getValues(Telegram___MaximaServer___)
__M__a__x__i__m__a__ = __M__a__x__i__m__a___[v]["lv"] .. ";" .. ___Telegram__MaximaServer___[1].value
Telegram___MaximaServer = split(__M__a__x__i__m__a__, ";")
___Telegram___MaximaServer = Telegram___MaximaServer[1]
Telegram___MaximaServer___M__a__x__i__m__a__ = Telegram___MaximaServer[2]
if ___Telegram___MaximaServer == Telegram___MaximaServer___M__a__x__i__m__a__
then ___Telegram___MaximaServer__ = true
_Telegram___MaximaServer___ = true
else ___Telegram___MaximaServer__ = false
_Telegram___MaximaServer___ = false end end
end if ___Telegram___MaximaServer__ == true then
___Telegram__MaximaServer___ = __M___a___x___i___m___a__[i].address
__Telegram__MaximaServer___(___Telegram__MaximaServer___, __M__a__x__i__m__a___1)
end end if ___Telegram___MaximaServer_ == true
then end end end end
function edit(_M_a_x_i_m_a_,M_a_x_i_m_a_)_om=_M_a_x_i_m_a_[1].memory or _M_a_x_i_m_a_[1][1]_ov=_M_a_x_i_m_a_[3].value or _M_a_x_i_m_a_[3][1]_on=_M_a_x_i_m_a_[2].name or _M_a_x_i_m_a_[2][1]
gg.clearResults() gg.setRanges(_om)
gg.searchNumber(_ov,_M_a_x_i_m_a_[3].type or _M_a_x_i_m_a_[3][2])
___M___a___x___i___m___a___=gg.getResultCount()
if ___M___a___x___i___m___a___<1
then gg.toast(_on.." Failed to open") else
__M___a___x___i___m___a__=gg.getResults(50000)
for i=1,___M___a___x___i___m___a___ do
ist=true for v=4,#_M_a_x_i_m_a_ do
if ist==true and __M___a___x___i___m___a__[i].value==_ov
then cd={{}}cd[1].address=__M___a___x___i___m___a__[i].address+(_M_a_x_i_m_a_[v].offset or _M_a_x_i_m_a_[v][2])cd[1].flags=_M_a_x_i_m_a_[v].type or _M_a_x_i_m_a_[v][3]___Telegram__MaximaServer___=gg.getValues(cd)Telegram__MaximaServer___=_M_a_x_i_m_a_[v].lv or _M_a_x_i_m_a_[v][1]___Telegram__MaximaServer=___Telegram__MaximaServer___[1].value
if Telegram__MaximaServer___==___Telegram__MaximaServer
then ___Telegram___MaximaServer__=true ist=true
else ___Telegram___MaximaServer__=false
ist=false end end end
if ___Telegram___MaximaServer__==true then
___Telegram__MaximaServer___=__M___a___x___i___m___a__[i].address
for x=1,#(M_a_x_i_m_a_)do
__Telegram___MaximaServer__=___Telegram__MaximaServer___+(M_a_x_i_m_a_[x].offset or M_a_x_i_m_a_[x][2])___Telegram__MaximaServer_=M_a_x_i_m_a_[x].type or M_a_x_i_m_a_[x][3]_Telegram__MaximaServer___=M_a_x_i_m_a_[x].value or M_a_x_i_m_a_[x][1]__Telegram___MaximaServer___=M_a_x_i_m_a_[x].freeze or M_a_x_i_m_a_[x][4]___Telegram___MaximaServer___={{address=__Telegram___MaximaServer__,flags=___Telegram__MaximaServer_,value=_Telegram__MaximaServer___}}
if __Telegram___MaximaServer___==true
then ___Telegram___MaximaServer___[1].freeze=__Telegram___MaximaServer___
gg.addListItems(___Telegram___MaximaServer___)
else gg.setValues(___Telegram___MaximaServer___)
end end ___Telegram___MaximaServer_=true
end end if ___Telegram___MaximaServer_==true
then gg.toast(_on.." Successfully opened") else
gg.toast(_on.." Failed to open") end end end local app = {}
app.memorySearchMode = function(MEMORY) if (MEMORY == 2) then
gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_PPSSPP) 
end if (MEMORY == -1) then
gg.setRanges(gg.REGION_VIDEO) end if (MEMORY == -2) then 
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_CODE_SYS) end
if (MEMORY == 0) then gg.setRanges(gg.REGION_ANONYMOUS)
end end function checkType(dataType) local type 
if dataType =="D" or dataType == "D" then type = gg.TYPE_DWORD
end if dataType == "F" then type = gg.TYPE_FLOAT end 
if dataType == "E" then type = gg.TYPE_DOUBLE end 
if dataType == "B" or dataType == "B" then type = gg.TYPE_BYTE 
end if dataType == "W" or dataType == "W" then 
type = gg.TYPE_WORD os.exit() end	return type end
app.memorySearch = function(pkgName, isNewSearch, address, tb, dataType)	
gg.clearResults() gg.setVisible(false)
local __Telegram____MaximaServer__ = gg.searchNumber(tb[1]["lv"], checkType(dataType), false, gg.SIGN_EQUAL, address, -1);
local t = gg.getResults(9999); local _M_a_x_i_m_a = {}
local ___Telegram____MaximaServer__ = {}
for i=1, #t do for j=2, #tb do _M_a_x_i_m_a[j] = {}
_M_a_x_i_m_a[j].address = t[i].address + tb[j]["offset"]
if(tb[j]["type"] == nil) then _M_a_x_i_m_a[j].flags = t[i].flags else
_M_a_x_i_m_a[j].flags = checkType(tb[j]["type"]) end
_M_a_x_i_m_a = gg.getValues(_M_a_x_i_m_a)
if (_M_a_x_i_m_a[j].value == tb[j]["lv"]) then
___Telegram____MaximaServer__[#___Telegram____MaximaServer__+1] = t[i].address
end end end gg.clearResults()
return __Telegram____MaximaServer__, ___Telegram____MaximaServer__
end app.memoryWrite = function(pkgName, address, value, dataType)
gg.setVisible(false) local t = {} t[1] ={}
t[1].address = address t[1].flags = checkType(dataType)
t[1].value = value return gg.setValues(t) end
GG = {Read,Write} function GG.ReadWrite(Read,Writw)
____Telegram____MaximaServer____ = {}
data____Telegram____MaximaServer____ = Read[1]
offset = data____Telegram____MaximaServer____[2]
for i=1,#Read do ____Telegram___MaximaServer____ = Read[i]
LV = {["lv"] = ____Telegram___MaximaServer____[1],["offset"] = ____Telegram___MaximaServer____[2]-offset}
table.insert(____Telegram____MaximaServer____, i, LV)
end app.memorySearchMode(Memory)
isSuuess,___M__a__x__i__m__a__ = app.memorySearch(pkgName, true, 0, ____Telegram____MaximaServer____, Type)
if ___M__a__x__i__m__a__[1] == nil then
else for ii=1,#___M__a__x__i__m__a__ do for iii=1,#Write do
TelegramMaximaServer = Write[iii] value = TelegramMaximaServer[1]
___M__a__x__i__m__a___ = TelegramMaximaServer[2]
app.memoryWrite(pkgName,___M__a__x__i__m__a__[ii]+___M__a__x__i__m__a___-offset,value,Type)
end end gg.toast(ID.. "Successfully opened") end end
function SearchWrite(Search, Write, Type)
gg.clearResults() gg.setVisible(false)
gg.searchNumber(Search[1][1], Type) local t = gg.getResults(9999)
gg.clearResults() if t ~= nil then local r = {}
for j=2, #Search do for i, v in ipairs(t) do r[i] = {}
r[i].address = v.address + Search[j][2] - Search[1][2]
r[i].flags = v.flags end r = gg.getValues(r) for i = #t, 1, -1 do
if (tostring(r[i].value) ~= tostring(Search[j][1]) ) then
table.remove(t, i) table.remove(r, i) end end end
local r = {} for i=1, #t do for j=1, #Write do r[#r+1] = {}
r[#r].address = t[i].address + Write[j][2] - Search[1][2]
r[#r].flags = t[i].flags r[#r].value = Write[j][1]
r[#r].freeze = true end end gg.setValues(r) end end
function split(___M___a___x___i___m___a___FullString, ___M___a___x___i___m___a___Separator)
local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do
local nFindLastIndex = string.find(___M___a___x___i___m___a___FullString, ___M___a___x___i___m___a___Separator, nFindStartIndex)
if not nFindLastIndex then
nSplitArray[nSplitIndex] = string.sub(___M___a___x___i___m___a___FullString, nFindStartIndex, string.len(___M___a___x___i___m___a___FullString))
break end nSplitArray[nSplitIndex] = string.sub(___M___a___x___i___m___a___FullString, nFindStartIndex, nFindLastIndex - 1)
nFindStartIndex = nFindLastIndex + string.len(___M___a___x___i___m___a___Separator)
nSplitIndex = nSplitIndex + 1 end return nSplitArray end
function __Telegram__MaximaServer___(___Telegram__MaximaServer___, __Telegram__MaximaServer__)
for x = 1, #(__Telegram__MaximaServer__) do
__Telegram___MaximaServer__ = ___Telegram__MaximaServer___ + __Telegram__MaximaServer__[x]["offset"]
___Telegram__MaximaServer_ = __Telegram__MaximaServer__[x]["type"]
_Telegram__MaximaServer___ = __Telegram__MaximaServer__[x]["value"]
gg.setValues({[1] = {address = __Telegram___MaximaServer__, flags = ___Telegram__MaximaServer_, value = _Telegram__MaximaServer___}})
___Telegram__MaximaServer__ = ___Telegram__MaximaServer__ + 1
end end function Telegram_MaximaServer(Telegram__MaximaServer)
gg.clearResults()
gg.setRanges(Telegram__MaximaServer[1]["memory"])
gg.searchNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(Telegram__MaximaServer[2]["name"] .. "Failed to open") else
gg.refineNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
gg.refineNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
gg.refineNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(Telegram__MaximaServer[2]["name"] .. "Failed to open")
else __M___a___x___i___m___a__ = gg.getResults(999999)
___M___a___x___i___m___a___ = gg.getResultCount()
___Telegram__MaximaServer__ = 0
if ___M___a___x___i___m___a___ > 999999 then
___M___a___x___i___m___a___ = 999999
end for i = 1, ___M___a___x___i___m___a___ do
_Telegram___MaximaServer___ = true
for v = 4, #(Telegram__MaximaServer) do
if _Telegram___MaximaServer___ == true then
Telegram___MaximaServer___ = {}
Telegram___MaximaServer___[1] = {}
Telegram___MaximaServer___[1].address = __M___a___x___i___m___a__[i].address + Telegram__MaximaServer[v]["offset"]
Telegram___MaximaServer___[1].flags = Telegram__MaximaServer[v]["type"]
___Telegram__MaximaServer___ = gg.getValues(Telegram___MaximaServer___)
__M__a__x__i__m__a__ = Telegram__MaximaServer[v]["lv"] .. ";" .. ___Telegram__MaximaServer___[1].value
Telegram___MaximaServer = split(__M__a__x__i__m__a__, ";")
___Telegram___MaximaServer = Telegram___MaximaServer[1]
Telegram___MaximaServer___M__a__x__i__m__a__ = Telegram___MaximaServer[2]
if ___Telegram___MaximaServer == Telegram___MaximaServer___M__a__x__i__m__a__
then ___Telegram___MaximaServer__ = true
_Telegram___MaximaServer___ = true
else ___Telegram___MaximaServer__ = false
_Telegram___MaximaServer___ = false end end end
if ___Telegram___MaximaServer__ == true then
___Telegram__MaximaServer___ = __M___a___x___i___m___a__[i].address
__Telegram__MaximaServer___(___Telegram__MaximaServer___, __Telegram__MaximaServer__)
___Telegram___MaximaServer_ = true end end
if ___Telegram___MaximaServer_ == true then
gg.toast(Telegram__MaximaServer[2]["name"] .. "Successfully Modified" .. ___Telegram__MaximaServer__ .. "Values")
else gg.toast(Telegram__MaximaServer[2]["name"] .. "Failed to open")
end end end end
Telegram__MaximaServer = {
{["memory"]=32},
{["name"]="Anti-Report"},
{["value"]=3045064704,["type"]=32},
{["lv"]=3045064704,["offset"]=0,["type"]=32},
{["lv"]=4575657221408423936,["offset"]=4,["type"]=32},
}
__Telegram__MaximaServer__ = {
{["value"]=346464343464,["offset"]=0, ["type"]=32},
{["value"]=235353232353,["offset"]=4, ["type"]=32},
}
Telegram_MaximaServer(Telegram__MaximaServer)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC) gg.searchNumber("909391408;808923191::8", gg.TYPE_DWORD)
  gg.getResults(999)
  gg.editAll("1089886885", gg.TYPE_DWORD)
  gg.clearResults() gg.setRanges(gg.REGION_C_ALLOC) gg.searchNumber("909391408", gg.TYPE_DWORD)
  gg.getResults(999)
  gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
  gg.searchNumber("-1447068675", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.processResume()
  gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.addListItems((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.searchNumber("-805298040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.processResume()
  gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.addListItems((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(":/report", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":/report", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(":cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(":Cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":Cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(":/tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":/tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":/report", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":/report", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":Cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":Cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":/tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":/tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.addListItems({{['address'] = 0x1b0,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x1b8,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0xd28,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x1d237b8,['flags'] = 4,['freeze'] = true,['value'] = 70086,},})
gg.addListItems({{['address'] = 0x1f40f68,['flags'] = 4,['freeze'] = true,['value'] = 4451,},})
gg.addListItems({{['address'] = 0x5d8,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0xa4c,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0xa50,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0xa5c,['flags'] = 4,['freeze'] = true,['value'] = 4452,},})
gg.addListItems({{['address'] = 0xb20,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x143c,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x1440,['flags'] = 4,['freeze'] = true,['value'] = 4451,},})
gg.addListItems({{['address'] = 0x1fc4974,['flags'] = 4,['freeze'] = true,['value'] = 70086,},})
gg.addListItems({{['address'] = 0x1fbc3a8,['flags'] = 4,['freeze'] = true,['value'] = 70086,},})
gg.addListItems({{['address'] = 0x1e9e87c,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x1e9e7e0,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x1e9e7cc,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x1e9e7b8,['flags'] = 4,['freeze'] = true,['value'] = 4451,},})
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":get_report_data", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":report_apk", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":AntiCheat", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":asia.csoversea.mbgame.anticheatexpert.com", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearList()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":tss_sdk_rcv_anti_data", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(":tss_sdk_rcv_anti_data", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":TssSDKInit", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(":TssSDKInit", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":tss_del_report_data", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(":tss_del_report_data", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(":tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":system/bin/linker", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(":system/bin/linker", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("-1447068675", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems({})
gg.clearResults()
gg.searchNumber("-805298040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems({})
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":/tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(":/tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.clearResults()
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/RoleInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/PufferTmpDir")
os.remove("/data/data/com.tencent.ig/app_appcache")
os.remove("/data/data/com.tencent.ig/app_bugly")
os.remove("/data/data/com.tencent.ig/app_crashrecord")
os.remove("/data/data/com.tencent.ig/cache")
os.remove("/data/data/com.tencent.ig/code_cache")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/RoleInfo")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/PufferTmpDir")
os.remove("/data/data/com.pubg.krmobile/app_appcache")
os.remove("/data/data/com.pubg.krmobile/app_bugly")
os.remove("/data/data/com.pubg.krmobile/app_crashrecord")
os.remove("/data/data/com.pubg.krmobile/cache")
os.remove("/data/data/com.pubg.krmobile/code_cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/PufferFileList.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/crashinfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/Movies")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files")
os.remove("/storage/emulated/0/Android/data/com.ludashi.superboost")
os.remove("/storage/emulated/0/Android/data/io.va.exposed/files")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/al")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/Unity")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/Pictures")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/app_appcache")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/app_bugly")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/app_crashrecord")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/cache")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/code_cache")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_appcache")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_crashrecord")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/code_cache")
os.remove("/data/data/com.tencent.ig/app_bugly/jni_log_1577506835319.txt")
os.remove("/data/data/com.tencent.ig/app_bugly/sys_log_1577506835319.txt")
os.remove("/data/data/com.tencent.ig/app_bugly/tomb_1577359201742.txt")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/app_bugly/jni_log_1577508070218.txt")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/app_bugly/sys_log_1577508070218.txt")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/app_crashrecord/1004")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/cache/tmp6581746537038722605.tmp")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/cache/volley/-1876432238937930483")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/cache/volley/402123874-1414136575")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/code_cache/com.android.opengl.shaders_cache")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/code_cache/com.android.opengl.shaders_cachecache")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/iMSDK/2_unknown-device-id_9999_20191228101110.log")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/__tsecache.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AdjustAttribution")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AdjustIoActivityState")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AdjustIoPackageQueue")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AppEventsLogger.persistedevents")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/gcTestConfig.txt")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tpnlcache.data")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/iMSDK/2_unknown-device-id_9999_20191228101110.gz")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AdjustIoActivityState")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AppEventsLogger.persistedevents")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/hawk_data")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/hawk_data_init")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/mycpuinfo")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/TAPM_CM_AUDIT")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tersafe.update")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_app_915c.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_cs_stat2.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss.i.m.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/comm.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/config2.xml.b99a2eec")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/config3.xml")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/gp4.ano.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/mn_cache.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/mrpcs.data")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_base.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_cef.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_cfg2.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_lcp.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_r_record.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_shp_tmp.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss.ano.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tssmua.zip")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/no_backup/com.google.android.gms.appid-no-backup")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud/GCloud_2019122620.log")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud/GCloud_2019122810.log")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly/jni_log_1578198267363.txt")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly/sys_log_1578198267363.txt")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_crashrecord/1004")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/000003.log")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/CURRENT")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/LOCK")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/LOG")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/MANIFEST-000001")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/GPUCache/index-dir/the-real-index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/GPUCache/index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/GPUCache/index-dir/the-real-index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/GPUCache/index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/000003.log")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/CURRENT")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/LOCK")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/LOG")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/MANIFEST-000001")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/000003.log")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/CURRENT")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/LOCK")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/LOG")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/MANIFEST-000001")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Cookies")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Cookies-journal")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Web Data")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Web Data-journal")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/pref_store")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/variations_seed")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/variations_stamp")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/webview_data.lock")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/oat/arm/1510898742191.odex")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/oat/arm/1510898742191.vdex")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/oat/1510898742191.jar.cur.prof")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-934765161456825916")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-12641718651726807727")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-14816519161082035398")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/587138223-1144374039")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/738700132-1860930799")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/1519755986-631348890")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/414639347624179972")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/13692830731615832150")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/15197559861070317552")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-934765161456825916")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-12641718651726807727")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-14816519161082035398")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/587138223-1144374039")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/738700132-1860930799")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/1519755986-631348890")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/414639347624179972")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/13692830731615832150")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/15197559861070317552")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Crashpad/settings.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/Code Cache/js/index-dir/the-real-index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/Code Cache/js/6aaed60636ee0201_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/Code Cache/js/16351c91809a9cf8_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/Code Cache/js/index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/index-dir/the-real-index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/1cc791b735648e18_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/3e04d0f8697c78a2_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/9c96b53a2bb0e874_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/79f7c877fb1f712a_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/81e743f2cb5a2b64_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/88f0cbb8b8e69c23_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/7556c1835650e1d4_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/382231779e7438b6_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/a4924b32c9d742ea_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/d495fa4a78df46ba_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/dfe6b2497a7513ba_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/ebe8cb2e971c8360_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/font_unique_name_table.pb")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/tmp3597813810324477687.tmp")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/tmp3610993446905838121.tmp")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/tmp7808321707509744993.tmp")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/code_cache/com.android.opengl.shaders_cache")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/iMSDK/2_unknown-device-id_9999_20200105100549.log")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/iMSDK/2_unknown-device-id_9999_20200105100451.gz")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/iMSDK/2_unknown-device-id_9999_20200105095426.gz")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/iMSDK/2_unknown-device-id_9999_20200105095150.gz")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/mn_cache.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/tss_cef.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/tss_r_record.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/tss.ano.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/__tsecache.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/AdjustAttribution")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/AdjustIoActivityState")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/AdjustIoPackageQueue")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/apm_cc")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/cache.crc.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/gcTestConfig.txt")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/hawk_data_init")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/mycpuinfo")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tersafe.update")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tpnlcache.data")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_app_915c.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_cs_stat2.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss.i.m.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/no_backup/com.google.android.gms.appid-no-backup")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly/jni_log_1578198950239.txt")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly/sys_log_1578198950239.txt")
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
gg.toast("??Root Report Block Aktif??")
file:write(os.date("%d %m %Y - %H %M %S : [Root]Report Blocklandı!\n"))
end

if report == 2 then
function split(___M___a___x___i___m___a___FullString, ___M___a___x___i___m___a___Separator) local nFindStartIndex = 1
local nSplitIndex = 1 local nSplitArray = {} while true do
local nFindLastIndex = string.find(___M___a___x___i___m___a___FullString, ___M___a___x___i___m___a___Separator, nFindStartIndex) if not nFindLastIndex then
nSplitArray[nSplitIndex] = string.sub(___M___a___x___i___m___a___FullString, nFindStartIndex, string.len(___M___a___x___i___m___a___FullString))
break end nSplitArray[nSplitIndex] = string.sub(___M___a___x___i___m___a___FullString, nFindStartIndex, nFindLastIndex - 1)
nFindStartIndex = nFindLastIndex + string.len(___M___a___x___i___m___a___Separator)
nSplitIndex = nSplitIndex + 1 end return nSplitArray end
function __Telegram__MaximaServer___(___Telegram__MaximaServer___, __Telegram__MaximaServer__)
for x = 1, #(__Telegram__MaximaServer__) do
__Telegram___MaximaServer__ = ___Telegram__MaximaServer___ + __Telegram__MaximaServer__[x]["offset"]
___Telegram__MaximaServer_ = __Telegram__MaximaServer__[x]["type"]
_Telegram__MaximaServer___ = __Telegram__MaximaServer__[x]["value"]
gg.setValues({[1] = {address = __Telegram___MaximaServer__, flags = ___Telegram__MaximaServer_, value = _Telegram__MaximaServer___}})
___Telegram__MaximaServer__ = ___Telegram__MaximaServer__ + 1
end end function Telegram_MaximaServer(Telegram__MaximaServer)
gg.clearResults() gg.setRanges(Telegram__MaximaServer[1]["memory"])
gg.searchNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
if gg.getResultCount() == 0
then gg.toast(Telegram__MaximaServer[2]["name"] .. "Failed to open")
else gg.refineNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
gg.refineNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
gg.refineNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
if gg.getResultCount() == 0
then gg.toast(Telegram__MaximaServer[2]["name"] .. "Failed to open")
else __M___a___x___i___m___a__ = gg.getResults(999999)
___M___a___x___i___m___a___ = gg.getResultCount()
___Telegram__MaximaServer__ = 0 if ___M___a___x___i___m___a___ > 999999
then ___M___a___x___i___m___a___ = 999999
end for i = 1, ___M___a___x___i___m___a___ do
_Telegram___MaximaServer___ = true for v = 4, #(Telegram__MaximaServer) do
if _Telegram___MaximaServer___ == true
then Telegram___MaximaServer___ = {} Telegram___MaximaServer___[1] = {}
Telegram___MaximaServer___[1].address = __M___a___x___i___m___a__[i].address + Telegram__MaximaServer[v]["offset"]
Telegram___MaximaServer___[1].flags = Telegram__MaximaServer[v]["type"]
___Telegram__MaximaServer___ = gg.getValues(Telegram___MaximaServer___)
__M__a__x__i__m__a__ = Telegram__MaximaServer[v]["lv"] .. ";" .. ___Telegram__MaximaServer___[1].value
Telegram___MaximaServer = split(__M__a__x__i__m__a__, ";")
___Telegram___MaximaServer = Telegram___MaximaServer[1]
Telegram___MaximaServer___M__a__x__i__m__a__ = Telegram___MaximaServer[2]
if ___Telegram___MaximaServer == Telegram___MaximaServer___M__a__x__i__m__a__
then ___Telegram___MaximaServer__ = true
_Telegram___MaximaServer___ = true
else ___Telegram___MaximaServer__ = false
_Telegram___MaximaServer___ = false end end
end if ___Telegram___MaximaServer__ == true then
___Telegram__MaximaServer___ = __M___a___x___i___m___a__[i].address
__Telegram__MaximaServer___(___Telegram__MaximaServer___, __Telegram__MaximaServer__)
___Telegram___MaximaServer_ = true end end
if ___Telegram___MaximaServer_ == true then
gg.toast(Telegram__MaximaServer[2]["name"] .. "Successfully Modified" .. ___Telegram__MaximaServer__ .. "Values")
else gg.toast(Telegram__MaximaServer[2]["name"] .. "Failed to open") end end end end
function split(___M___a___x___i___m___a___FullString, ___M___a___x___i___m___a___Separator)
local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do
local nFindLastIndex = string.find(___M___a___x___i___m___a___FullString, ___M___a___x___i___m___a___Separator, nFindStartIndex)
if not nFindLastIndex then
nSplitArray[nSplitIndex] = string.sub(___M___a___x___i___m___a___FullString, nFindStartIndex, string.len(___M___a___x___i___m___a___FullString))
break end nSplitArray[nSplitIndex] = string.sub(___M___a___x___i___m___a___FullString, nFindStartIndex, nFindLastIndex - 1)
nFindStartIndex = nFindLastIndex + string.len(___M___a___x___i___m___a___Separator)
nSplitIndex = nSplitIndex + 1 end return nSplitArray end
function __Telegram__MaximaServer___(___Telegram__MaximaServer___, __M__a__x__i__m__a___1)
for x = 1, #(__M__a__x__i__m__a___1) do
__Telegram___MaximaServer__ = ___Telegram__MaximaServer___ + __M__a__x__i__m__a___1[x]["address"]
___Telegram__MaximaServer_ = __M__a__x__i__m__a___1[x]["flags"]
_Telegram__MaximaServer___ = __M__a__x__i__m__a___1[x]["value"]
__Telegram___MaximaServer___ = __M__a__x__i__m__a___1[x]["freeze"]
if __Telegram___MaximaServer___ == nil or __Telegram___MaximaServer___ == "" then
gg.setValues({[1] = {address = __Telegram___MaximaServer__, flags = ___Telegram__MaximaServer_, value = _Telegram__MaximaServer___}}) else
gg.addListItems({[1] = {address = __Telegram___MaximaServer__, flags = ___Telegram__MaximaServer_, freeze = __Telegram___MaximaServer___, value = _Telegram__MaximaServer___}})
end ___Telegram__MaximaServer__ = ___Telegram__MaximaServer__ + 1
___Telegram___MaximaServer_ = true end end
function __M__a__x__i__m__a___Q(__M__a__x__i__m__a___)
gg.setRanges(__M__a__x__i__m__a___[1]["memory"])
gg.searchNumber(__M__a__x__i__m__a___[3]["value"], __M__a__x__i__m__a___[3]["flags"])
if gg.getResultCount() == 0 then
gg.toast(__M__a__x__i__m__a___[2]["Projects"] .. "Load failed") else
gg.refineNumber(__M__a__x__i__m__a___[3]["value"], __M__a__x__i__m__a___[3]["flags"])
gg.refineNumber(__M__a__x__i__m__a___[3]["value"], __M__a__x__i__m__a___[3]["flags"])
gg.refineNumber(__M__a__x__i__m__a___[3]["value"], __M__a__x__i__m__a___[3]["flags"])
if gg.getResultCount() == 0 then
gg.toast(__M__a__x__i__m__a___[2]["Projects"] .. "Load failed")
else __M___a___x___i___m___a__ = gg.getResults(999999)
___M___a___x___i___m___a___ = gg.getResultCount()
___Telegram__MaximaServer__  =  0
if ___M___a___x___i___m___a___ > 999999 then
___M___a___x___i___m___a___ = 999999 end
for i = 1, ___M___a___x___i___m___a___ do
_Telegram___MaximaServer___ = true
for v = 4, #(__M__a__x__i__m__a___) do
if _Telegram___MaximaServer___ == true then
Telegram___MaximaServer___ = {}
Telegram___MaximaServer___[1] = {}
Telegram___MaximaServer___[1].address = __M___a___x___i___m___a__[i].address + __M__a__x__i__m__a___[v]["address"]
Telegram___MaximaServer___[1].flags = __M__a__x__i__m__a___[v]["flags"]
___Telegram__MaximaServer___ = gg.getValues(Telegram___MaximaServer___)
__M__a__x__i__m__a__ = __M__a__x__i__m__a___[v]["lv"] .. ";" .. ___Telegram__MaximaServer___[1].value
Telegram___MaximaServer = split(__M__a__x__i__m__a__, ";")
___Telegram___MaximaServer = Telegram___MaximaServer[1]
Telegram___MaximaServer___M__a__x__i__m__a__ = Telegram___MaximaServer[2]
if ___Telegram___MaximaServer == Telegram___MaximaServer___M__a__x__i__m__a__
then ___Telegram___MaximaServer__ = true
_Telegram___MaximaServer___ = true
else ___Telegram___MaximaServer__ = false
_Telegram___MaximaServer___ = false end end
end if ___Telegram___MaximaServer__ == true then
___Telegram__MaximaServer___ = __M___a___x___i___m___a__[i].address
__Telegram__MaximaServer___(___Telegram__MaximaServer___, __M__a__x__i__m__a___1)
end end if ___Telegram___MaximaServer_ == true
then end end end end
function edit(_M_a_x_i_m_a_,M_a_x_i_m_a_)_om=_M_a_x_i_m_a_[1].memory or _M_a_x_i_m_a_[1][1]_ov=_M_a_x_i_m_a_[3].value or _M_a_x_i_m_a_[3][1]_on=_M_a_x_i_m_a_[2].name or _M_a_x_i_m_a_[2][1]
gg.clearResults() gg.setRanges(_om)
gg.searchNumber(_ov,_M_a_x_i_m_a_[3].type or _M_a_x_i_m_a_[3][2])
___M___a___x___i___m___a___=gg.getResultCount()
if ___M___a___x___i___m___a___<1
then gg.toast(_on.." Failed to open") else
__M___a___x___i___m___a__=gg.getResults(50000)
for i=1,___M___a___x___i___m___a___ do
ist=true for v=4,#_M_a_x_i_m_a_ do
if ist==true and __M___a___x___i___m___a__[i].value==_ov
then cd={{}}cd[1].address=__M___a___x___i___m___a__[i].address+(_M_a_x_i_m_a_[v].offset or _M_a_x_i_m_a_[v][2])cd[1].flags=_M_a_x_i_m_a_[v].type or _M_a_x_i_m_a_[v][3]___Telegram__MaximaServer___=gg.getValues(cd)Telegram__MaximaServer___=_M_a_x_i_m_a_[v].lv or _M_a_x_i_m_a_[v][1]___Telegram__MaximaServer=___Telegram__MaximaServer___[1].value
if Telegram__MaximaServer___==___Telegram__MaximaServer
then ___Telegram___MaximaServer__=true ist=true
else ___Telegram___MaximaServer__=false
ist=false end end end
if ___Telegram___MaximaServer__==true then
___Telegram__MaximaServer___=__M___a___x___i___m___a__[i].address
for x=1,#(M_a_x_i_m_a_)do
__Telegram___MaximaServer__=___Telegram__MaximaServer___+(M_a_x_i_m_a_[x].offset or M_a_x_i_m_a_[x][2])___Telegram__MaximaServer_=M_a_x_i_m_a_[x].type or M_a_x_i_m_a_[x][3]_Telegram__MaximaServer___=M_a_x_i_m_a_[x].value or M_a_x_i_m_a_[x][1]__Telegram___MaximaServer___=M_a_x_i_m_a_[x].freeze or M_a_x_i_m_a_[x][4]___Telegram___MaximaServer___={{address=__Telegram___MaximaServer__,flags=___Telegram__MaximaServer_,value=_Telegram__MaximaServer___}}
if __Telegram___MaximaServer___==true
then ___Telegram___MaximaServer___[1].freeze=__Telegram___MaximaServer___
gg.addListItems(___Telegram___MaximaServer___)
else gg.setValues(___Telegram___MaximaServer___)
end end ___Telegram___MaximaServer_=true
end end if ___Telegram___MaximaServer_==true
then gg.toast(_on.." Successfully opened") else
gg.toast(_on.." Failed to open") end end end local app = {}
app.memorySearchMode = function(MEMORY) if (MEMORY == 2) then
gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_PPSSPP) 
end if (MEMORY == -1) then
gg.setRanges(gg.REGION_VIDEO) end if (MEMORY == -2) then 
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_CODE_SYS) end
if (MEMORY == 0) then gg.setRanges(gg.REGION_ANONYMOUS)
end end function checkType(dataType) local type 
if dataType =="D" or dataType == "D" then type = gg.TYPE_DWORD
end if dataType == "F" then type = gg.TYPE_FLOAT end 
if dataType == "E" then type = gg.TYPE_DOUBLE end 
if dataType == "B" or dataType == "B" then type = gg.TYPE_BYTE 
end if dataType == "W" or dataType == "W" then 
type = gg.TYPE_WORD os.exit() end	return type end
app.memorySearch = function(pkgName, isNewSearch, address, tb, dataType)	
gg.clearResults() gg.setVisible(false)
local __Telegram____MaximaServer__ = gg.searchNumber(tb[1]["lv"], checkType(dataType), false, gg.SIGN_EQUAL, address, -1);
local t = gg.getResults(9999); local _M_a_x_i_m_a = {}
local ___Telegram____MaximaServer__ = {}
for i=1, #t do for j=2, #tb do _M_a_x_i_m_a[j] = {}
_M_a_x_i_m_a[j].address = t[i].address + tb[j]["offset"]
if(tb[j]["type"] == nil) then _M_a_x_i_m_a[j].flags = t[i].flags else
_M_a_x_i_m_a[j].flags = checkType(tb[j]["type"]) end
_M_a_x_i_m_a = gg.getValues(_M_a_x_i_m_a)
if (_M_a_x_i_m_a[j].value == tb[j]["lv"]) then
___Telegram____MaximaServer__[#___Telegram____MaximaServer__+1] = t[i].address
end end end gg.clearResults()
return __Telegram____MaximaServer__, ___Telegram____MaximaServer__
end app.memoryWrite = function(pkgName, address, value, dataType)
gg.setVisible(false) local t = {} t[1] ={}
t[1].address = address t[1].flags = checkType(dataType)
t[1].value = value return gg.setValues(t) end
GG = {Read,Write} function GG.ReadWrite(Read,Writw)
____Telegram____MaximaServer____ = {}
data____Telegram____MaximaServer____ = Read[1]
offset = data____Telegram____MaximaServer____[2]
for i=1,#Read do ____Telegram___MaximaServer____ = Read[i]
LV = {["lv"] = ____Telegram___MaximaServer____[1],["offset"] = ____Telegram___MaximaServer____[2]-offset}
table.insert(____Telegram____MaximaServer____, i, LV)
end app.memorySearchMode(Memory)
isSuuess,___M__a__x__i__m__a__ = app.memorySearch(pkgName, true, 0, ____Telegram____MaximaServer____, Type)
if ___M__a__x__i__m__a__[1] == nil then
else for ii=1,#___M__a__x__i__m__a__ do for iii=1,#Write do
TelegramMaximaServer = Write[iii] value = TelegramMaximaServer[1]
___M__a__x__i__m__a___ = TelegramMaximaServer[2]
app.memoryWrite(pkgName,___M__a__x__i__m__a__[ii]+___M__a__x__i__m__a___-offset,value,Type)
end end gg.toast(ID.. "Successfully opened") end end
function SearchWrite(Search, Write, Type)
gg.clearResults() gg.setVisible(false)
gg.searchNumber(Search[1][1], Type) local t = gg.getResults(9999)
gg.clearResults() if t ~= nil then local r = {}
for j=2, #Search do for i, v in ipairs(t) do r[i] = {}
r[i].address = v.address + Search[j][2] - Search[1][2]
r[i].flags = v.flags end r = gg.getValues(r) for i = #t, 1, -1 do
if (tostring(r[i].value) ~= tostring(Search[j][1]) ) then
table.remove(t, i) table.remove(r, i) end end end
local r = {} for i=1, #t do for j=1, #Write do r[#r+1] = {}
r[#r].address = t[i].address + Write[j][2] - Search[1][2]
r[#r].flags = t[i].flags r[#r].value = Write[j][1]
r[#r].freeze = true end end gg.setValues(r) end end
function split(___M___a___x___i___m___a___FullString, ___M___a___x___i___m___a___Separator)
local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do
local nFindLastIndex = string.find(___M___a___x___i___m___a___FullString, ___M___a___x___i___m___a___Separator, nFindStartIndex)
if not nFindLastIndex then
nSplitArray[nSplitIndex] = string.sub(___M___a___x___i___m___a___FullString, nFindStartIndex, string.len(___M___a___x___i___m___a___FullString))
break end nSplitArray[nSplitIndex] = string.sub(___M___a___x___i___m___a___FullString, nFindStartIndex, nFindLastIndex - 1)
nFindStartIndex = nFindLastIndex + string.len(___M___a___x___i___m___a___Separator)
nSplitIndex = nSplitIndex + 1 end return nSplitArray end
function __Telegram__MaximaServer___(___Telegram__MaximaServer___, __Telegram__MaximaServer__)
for x = 1, #(__Telegram__MaximaServer__) do
__Telegram___MaximaServer__ = ___Telegram__MaximaServer___ + __Telegram__MaximaServer__[x]["offset"]
___Telegram__MaximaServer_ = __Telegram__MaximaServer__[x]["type"]
_Telegram__MaximaServer___ = __Telegram__MaximaServer__[x]["value"]
gg.setValues({[1] = {address = __Telegram___MaximaServer__, flags = ___Telegram__MaximaServer_, value = _Telegram__MaximaServer___}})
___Telegram__MaximaServer__ = ___Telegram__MaximaServer__ + 1
end end function Telegram_MaximaServer(Telegram__MaximaServer)
gg.clearResults()
gg.setRanges(Telegram__MaximaServer[1]["memory"])
gg.searchNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(Telegram__MaximaServer[2]["name"] .. "Failed to open") else
gg.refineNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
gg.refineNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
gg.refineNumber(Telegram__MaximaServer[3]["value"], Telegram__MaximaServer[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(Telegram__MaximaServer[2]["name"] .. "Failed to open")
else __M___a___x___i___m___a__ = gg.getResults(999999)
___M___a___x___i___m___a___ = gg.getResultCount()
___Telegram__MaximaServer__ = 0
if ___M___a___x___i___m___a___ > 999999 then
___M___a___x___i___m___a___ = 999999
end for i = 1, ___M___a___x___i___m___a___ do
_Telegram___MaximaServer___ = true
for v = 4, #(Telegram__MaximaServer) do
if _Telegram___MaximaServer___ == true then
Telegram___MaximaServer___ = {}
Telegram___MaximaServer___[1] = {}
Telegram___MaximaServer___[1].address = __M___a___x___i___m___a__[i].address + Telegram__MaximaServer[v]["offset"]
Telegram___MaximaServer___[1].flags = Telegram__MaximaServer[v]["type"]
___Telegram__MaximaServer___ = gg.getValues(Telegram___MaximaServer___)
__M__a__x__i__m__a__ = Telegram__MaximaServer[v]["lv"] .. ";" .. ___Telegram__MaximaServer___[1].value
Telegram___MaximaServer = split(__M__a__x__i__m__a__, ";")
___Telegram___MaximaServer = Telegram___MaximaServer[1]
Telegram___MaximaServer___M__a__x__i__m__a__ = Telegram___MaximaServer[2]
if ___Telegram___MaximaServer == Telegram___MaximaServer___M__a__x__i__m__a__
then ___Telegram___MaximaServer__ = true
_Telegram___MaximaServer___ = true
else ___Telegram___MaximaServer__ = false
_Telegram___MaximaServer___ = false end end end
if ___Telegram___MaximaServer__ == true then
___Telegram__MaximaServer___ = __M___a___x___i___m___a__[i].address
__Telegram__MaximaServer___(___Telegram__MaximaServer___, __Telegram__MaximaServer__)
___Telegram___MaximaServer_ = true end end
if ___Telegram___MaximaServer_ == true then
gg.toast(Telegram__MaximaServer[2]["name"] .. "Successfully Modified" .. ___Telegram__MaximaServer__ .. "Values")
else gg.toast(Telegram__MaximaServer[2]["name"] .. "Failed to open")
end end end end
Telegram__MaximaServer = {
{["memory"]=32},
{["name"]="Anti-Report"},
{["value"]=3045064704,["type"]=32},
{["lv"]=3045064704,["offset"]=0,["type"]=32},
{["lv"]=4575657221408423936,["offset"]=4,["type"]=32},
}
__Telegram__MaximaServer__ = {
{["value"]=346464343464,["offset"]=0, ["type"]=32},
{["value"]=235353232353,["offset"]=4, ["type"]=32},
}
Telegram_MaximaServer(Telegram__MaximaServer)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC) gg.searchNumber("909391408;808923191::8", gg.TYPE_DWORD)
  gg.getResults(999)
  gg.editAll("1089886885", gg.TYPE_DWORD)
  gg.clearResults() gg.setRanges(gg.REGION_C_ALLOC) gg.searchNumber("909391408", gg.TYPE_DWORD)
  gg.getResults(999)
  gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
  gg.searchNumber("-1447068675", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.processResume()
  gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.addListItems((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.searchNumber("-805298040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.processResume()
  gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.addListItems((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(":/report", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":/report", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(":cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(":Cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":Cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(":/tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":/tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":/report", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":/report", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  

  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":Cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":Cheat", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":/tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(":/tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.clearResults()
  gg.addListItems({{['address'] = 0x1b0,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x1b8,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0xd28,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x1d237b8,['flags'] = 4,['freeze'] = true,['value'] = 70086,},})
gg.addListItems({{['address'] = 0x1f40f68,['flags'] = 4,['freeze'] = true,['value'] = 4451,},})
gg.addListItems({{['address'] = 0x5d8,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0xa4c,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0xa50,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0xa5c,['flags'] = 4,['freeze'] = true,['value'] = 4452,},})
gg.addListItems({{['address'] = 0xb20,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x143c,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x1440,['flags'] = 4,['freeze'] = true,['value'] = 4451,},})
gg.addListItems({{['address'] = 0x1fc4974,['flags'] = 4,['freeze'] = true,['value'] = 70086,},})
gg.addListItems({{['address'] = 0x1fbc3a8,['flags'] = 4,['freeze'] = true,['value'] = 70086,},})
gg.addListItems({{['address'] = 0x1e9e87c,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x1e9e7e0,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x1e9e7cc,['flags'] = 4,['freeze'] = true,['value'] = 0,},})
gg.addListItems({{['address'] = 0x1e9e7b8,['flags'] = 4,['freeze'] = true,['value'] = 4451,},})
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":get_report_data", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":report_apk", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":AntiCheat", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":asia.csoversea.mbgame.anticheatexpert.com", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearList()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":/tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(":/tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.clearResults()
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/RoleInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/PufferTmpDir")
os.remove("/data/data/com.tencent.ig/app_appcache")
os.remove("/data/data/com.tencent.ig/app_bugly")
os.remove("/data/data/com.tencent.ig/app_crashrecord")
os.remove("/data/data/com.tencent.ig/cache")
os.remove("/data/data/com.tencent.ig/code_cache")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/RoleInfo")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/PufferTmpDir")
os.remove("/data/data/com.pubg.krmobile/app_appcache")
os.remove("/data/data/com.pubg.krmobile/app_bugly")
os.remove("/data/data/com.pubg.krmobile/app_crashrecord")
os.remove("/data/data/com.pubg.krmobile/cache")
os.remove("/data/data/com.pubg.krmobile/code_cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/PufferFileList.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/crashinfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/Movies")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files")
os.remove("/storage/emulated/0/Android/data/com.ludashi.superboost")
os.remove("/storage/emulated/0/Android/data/io.va.exposed/files")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/al")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/Unity")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/Pictures")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/app_appcache")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/app_bugly")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/app_crashrecord")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/cache")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/code_cache")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_appcache")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_crashrecord")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/code_cache")
os.remove("/data/data/com.tencent.ig/app_bugly/jni_log_1577506835319.txt")
os.remove("/data/data/com.tencent.ig/app_bugly/sys_log_1577506835319.txt")
os.remove("/data/data/com.tencent.ig/app_bugly/tomb_1577359201742.txt")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/app_bugly/jni_log_1577508070218.txt")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/app_bugly/sys_log_1577508070218.txt")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/app_crashrecord/1004")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/cache/tmp6581746537038722605.tmp")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/cache/volley/-1876432238937930483")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/cache/volley/402123874-1414136575")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/code_cache/com.android.opengl.shaders_cache")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/code_cache/com.android.opengl.shaders_cachecache")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/iMSDK/2_unknown-device-id_9999_20191228101110.log")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/__tsecache.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AdjustAttribution")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AdjustIoActivityState")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AdjustIoPackageQueue")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AppEventsLogger.persistedevents")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/gcTestConfig.txt")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tpnlcache.data")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/iMSDK/2_unknown-device-id_9999_20191228101110.gz")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AdjustIoActivityState")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AppEventsLogger.persistedevents")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/hawk_data")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/hawk_data_init")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/mycpuinfo")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/TAPM_CM_AUDIT")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tersafe.update")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_app_915c.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_cs_stat2.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss.i.m.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/comm.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/config2.xml.b99a2eec")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/config3.xml")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/gp4.ano.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/mn_cache.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/mrpcs.data")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_base.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_cef.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_cfg2.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_lcp.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_r_record.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_shp_tmp.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss.ano.dat")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tssmua.zip")
os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/no_backup/com.google.android.gms.appid-no-backup")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud/GCloud_2019122620.log")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud/GCloud_2019122810.log")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly/jni_log_1578198267363.txt")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly/sys_log_1578198267363.txt")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_crashrecord/1004")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/000003.log")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/CURRENT")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/LOCK")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/LOG")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/MANIFEST-000001")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/GPUCache/index-dir/the-real-index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/GPUCache/index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/GPUCache/index-dir/the-real-index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/GPUCache/index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/000003.log")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/CURRENT")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/LOCK")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/LOG")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/MANIFEST-000001")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/000003.log")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/CURRENT")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/LOCK")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/LOG")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/MANIFEST-000001")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Cookies")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Cookies-journal")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Web Data")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Web Data-journal")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/pref_store")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/variations_seed")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/variations_stamp")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/webview_data.lock")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/oat/arm/1510898742191.odex")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/oat/arm/1510898742191.vdex")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/oat/1510898742191.jar.cur.prof")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-934765161456825916")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-12641718651726807727")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-14816519161082035398")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/587138223-1144374039")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/738700132-1860930799")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/1519755986-631348890")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/414639347624179972")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/13692830731615832150")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/15197559861070317552")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-934765161456825916")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-12641718651726807727")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-14816519161082035398")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/587138223-1144374039")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/738700132-1860930799")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/1519755986-631348890")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/414639347624179972")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/13692830731615832150")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/15197559861070317552")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Crashpad/settings.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/Code Cache/js/index-dir/the-real-index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/Code Cache/js/6aaed60636ee0201_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/Code Cache/js/16351c91809a9cf8_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/Code Cache/js/index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/index-dir/the-real-index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/1cc791b735648e18_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/3e04d0f8697c78a2_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/9c96b53a2bb0e874_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/79f7c877fb1f712a_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/81e743f2cb5a2b64_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/88f0cbb8b8e69c23_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/7556c1835650e1d4_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/382231779e7438b6_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/a4924b32c9d742ea_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/d495fa4a78df46ba_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/dfe6b2497a7513ba_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/ebe8cb2e971c8360_0")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/index")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/font_unique_name_table.pb")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/tmp3597813810324477687.tmp")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/tmp3610993446905838121.tmp")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/tmp7808321707509744993.tmp")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/code_cache/com.android.opengl.shaders_cache")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/iMSDK/2_unknown-device-id_9999_20200105100549.log")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/iMSDK/2_unknown-device-id_9999_20200105100451.gz")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/iMSDK/2_unknown-device-id_9999_20200105095426.gz")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/iMSDK/2_unknown-device-id_9999_20200105095150.gz")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/mn_cache.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/tss_cef.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/tss_r_record.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/tss.ano.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/__tsecache.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/AdjustAttribution")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/AdjustIoActivityState")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/AdjustIoPackageQueue")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/apm_cc")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/cache.crc.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/gcTestConfig.txt")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/hawk_data_init")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/mycpuinfo")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tersafe.update")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tpnlcache.data")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_app_915c.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_cs_stat2.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss.i.m.dat")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/no_backup/com.google.android.gms.appid-no-backup")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly/jni_log_1578198950239.txt")
os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly/sys_log_1578198950239.txt")
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
gg.toast("??Rootsuz Report Block Aktif??")
file:write(os.date("%d %m %Y - %H %M %S : [No Root]Report Blocklandı!\n"))
end
end


function log()
  gg.clearResults()
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifsbk")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/1950038955_3090_0.12.0.11023_20190425070710_1400806008_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifsbk")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/1950038955_3090_0.12.0.11023_20190425070710_1400806008_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifsbk")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/1950038955_3090_0.12.0.11023_20190425070710_1400806008_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifsbk")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/1950038955_3090_0.12.0.11023_20190425070710_1400806008_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/VipCodees")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
gg.toast("???Log Silindi???\n@OfficialAlfaa")
file:write(os.date("%d %m %Y - %H %M %S : Log Silindi!\n"))
end

function anti3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":com.tencent.mobileqq", gg.TYPE_BYTE)
gg.getResults(50000)
gg.editAll("119", gg.TYPE_BYTE)
gg.clearResults()
gg.getFile()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":com.tencent.mobileqqmusic", gg.TYPE_BYTE)
gg.getResults(50000)
gg.editAll("119", gg.TYPE_BYTE)
gg.clearResults()
gg.getFile()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":com.oktabagames.puzzle", gg.TYPE_BYTE)
gg.getResults(50000)
gg.editAll("119", gg.TYPE_BYTE)
gg.getFile()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":com.tencent.mobileqqq", gg.TYPE_BYTE)
gg.getResults(50000)
gg.editAll("119", gg.TYPE_BYTE)
gg.clearResults()
gg.getFile()
gg.clearResults()
gg.getRangesList(":com.tencent.mobileqq")
gg.clearResults()
gg.toast("?Tamamdır?\nt.me/BrosHackTeam")
file:write(os.date("%d %m %Y - %H %M %S : 3. Parti Önlendi!\n"))
end

function HME()
file:write(os.date("%d %m %Y - %H %M %S : Wall Hack Menü Girildi\n"))
  MN1 = gg.choice({
    "????? Röntgen Hilesi & Renk\n?? SADECE Snap Dragon",
    "????? Röntgen Hilesi & Renk\n?? TÜM CİHAZLAR",
    "<I{•----» ???????? «----•}|>"
  }, nil,"Röntgen Hilesi @BrosHackTeam")
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
  SILAHMENU = gg.choice({
"[??]Röntgen Hilesi SD-400 Ve Renk",
"[??]Röntgen Hilesi SD 410 Ve Renk",
"[??]Röntgen Hilesi SD 415 Ve Renk",
"[??]Röntgen Hilesi SD 425 Ve Renk",
"[??]Röntgen Hilesi SD 430 Ve Renk",
"[??]Röntgen Hilesi SD 435 Ve Renk",
"[??]Röntgen Hilesi SD 439 Ve Renk",
"[??]Röntgen Hilesi SD 450 Ve Renk",
"[??]Röntgen Hilesi SD 600 Ve Renk",
"[??]Röntgen Hilesi SD 615 Ve Renk",
"[??]Röntgen Hilesi SD 616 Ve Renk",
"[??]Röntgen Hilesi SD 625 Ve Renk",
"[??]Röntgen Hilesi SD 636 Ve Renk",
"[??]Röntgen Hilesi SD 660 Ve Renk",
"[??]Röntgen Hilesi SD 665 Ve Renk",
"[??]Röntgen Hilesi SD 675 Ve Renk",
"[??]Röntgen Hilesi SD 710 Ve Renk",
"[??]Röntgen Hilesi SD 712 Ve Renk",
"[??]Röntgen Hilesi SD 720 Ve Renk",
"[??]Röntgen Hilesi SD 820 Ve Renk",
"[??]Röntgen Hilesi SD 835 Ve Renk",
"[??]Röntgen Hilesi SD 845 Ve Renk",
"[??]Röntgen Hilesi SD 855 Ve Renk",
"??Geri??",
},nil, "?? Röntgen Hilesi Menü @BrosHackTeam")       
if SILAHMENU == nil then else
if SILAHMENU == 1 then wh400()end
if SILAHMENU == 2 then wh410()end
if SILAHMENU == 3 then wh415()end
if SILAHMENU == 4 then wh425()end
if SILAHMENU == 5 then wh430()end
if SILAHMENU == 6 then wh435()end
if SILAHMENU == 7 then wh439()end
if SILAHMENU == 8 then wh450()end
if SILAHMENU == 9 then wh600()end
if SILAHMENU == 10 then wh615 ()end
if SILAHMENU == 11 then wh616()end
if SILAHMENU == 12 then wh625()end
if SILAHMENU == 13 then wh636()end
if SILAHMENU == 14 then wh660 ()end
if SILAHMENU == 15 then wh665()end
if SILAHMENU == 16 then wh675()end
if SILAHMENU == 17 then wh710()end
if SILAHMENU == 18 then  wh712()end
if SILAHMENU == 19 then wh720()end
if SILAHMENU == 20 then wh820()end
if SILAHMENU == 21 then wh835()end
if SILAHMENU == 22 then wh845()end
if SILAHMENU == 23 then wh855()end
if SILAHMENU == 24 then HOME()end
end
PUBGMH = -1
end 

function wh400()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh410()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh415()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh425()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end


function wh430()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end


function wh435()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh439()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh450()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh600()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh615()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh616()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end


function wh625()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("504")
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("980")
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2145)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh636()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh660()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh665()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("537137162;8200;1074790402;539246608;272105488:261", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("1194344459;8201;1081081860;1938276359;278200346:197", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end


function wh675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh710()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end


function wh712()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end


function wh720()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh820()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh835()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function wh845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.02855966e-38;9.80908925e-45;1.83673795e-40;3.37670946121;2;0.24022650719:713", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("-1.62733775e-19;8.68805048e-44;1.39125291e-19;2;1.6623072e-19:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
end

function wh855()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,200;1,194,344,459;8,201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1,081,081,882;8,200:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Active")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end
      
function WHC400()
  CL400 = gg.multiChoice({
    "????? ?????????? GREEN ????????\n?? For ???????????????????? 400",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 400",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ByMisakiMey")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 410",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 410",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ByMisakiMey")
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
  gg.toast("?")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 415",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 415",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ByMisakiMey")
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
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 425",
    "????? ?????????? ???????????? ????????\n?? For ???????????????????? 425",
    "????? ?????????? GREEN ????????\n?? for ???????????????????? 425",
    "????? ?????????? MIX ???????????? ????????\n?? For ???????????????????? 425",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 430",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 430",
    "<I{•----» ???????? «----•}I>"
  }, nil,"???????????????? ")
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
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 435",
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 435",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 439",
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 439",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 450",
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 450",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 600",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 600",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? For ???????????????????? 615",
    "????? ?????????? GREEN ????????\n?? For ???????????????????? 615",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 615",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 616",
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 616",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 625",
    "????? ?????????? GREEN\n?? For ???????????????????? 625",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 625",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 625",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 636",
    "????? ?????????? GREEN\n?? For ???????????????????? 636",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 636",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 636",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
  gg.toast("???????????? ??")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 660",
    "????? ?????????? GRENN ????????\n?? For ???????????????????? 660",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 660",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 660",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 665",
    "????? ?????????? GRENN ????????\n?? For ???????????????????? 665",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 665",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 665",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 675",
    "????? ?????????? GRENN ????????\n?? For ???????????????????? 675",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 675",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 675",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 710",
    "????? ?????????? GRENN ????????\n?? For ???????????????????? 710",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 710",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 710",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 712",
    "????? ?????????? GRENN ????????\n?? For ???????????????????? 712",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 712",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 712",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 720",
    "????? ?????????? GRENN ????????\n?? For ???????????????????? 720",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 720",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 720",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 820",
    "????? ?????????? GRENN ????????\n?? For ???????????????????? 820",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 820",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 820",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 835",
    "????? ?????????? GRENN ????????\n?? For ???????????????????? 835",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 835",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 835",
    "<I{•----» ???????? «----•}I>"
  }, nil,"???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? for ???????????????????? 845",
    "????? ?????????? GRENN ????????\n?? For ???????????????????? 845",
    "????? ?????????? ?????? ???????????? ????????\n?? For ???????????????????? 845",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 845",
    "????? ?????????? ???????? ????????\n?? For ???????????????????? 845",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
    "????? ?????????? ???????????? ????????\n?? For ???????????????????? 855",
    "????? ?????????? GRENN ????????\n?? For ???????????????????? 855",
    "????? ?????????? GREEN ????????????\n?? for ???????????????????? 855",
    "????? ?????????? ?????? ????????\n?? For ???????????????????? 855",
    "????? ?????????? ???????? ????????\n?? For ???????????????????? 855",
    "<I{•----» ???????? «----•}I>"
  }, nil, "???????????????? ")
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
  SILAHMENU = gg.multiChoice({
    "????? ???????????? 7420\n?? Wh & ?????????? ????????",
    "????? ???????????? 7570\n?? Wh & ?????????? ????????",
    "????? ???????????? 7870\n?? Wh & ?????????? ????????",
    "????? ???????? 650\n?? Wh & ?????????? ????????",
    "????? ???????? 655\n?? Wh & ?????????? ????????",
    "????? ???????? 658\n?? Wh & ?????????? ????????",
    "????? ???????? 710\n?? Wh & ?????????? ????????",
    "????? ??90??\n?? Wh & ?????????? ????????",
    "????? ???????????????? P10\n?? Wh & ?????????? ????????",
    "????? ???????????????? P22\n?? Wh & ?????????? ????????",
    "????? ???????????????? P23\n?? Wh & ?????????? ????????",
    "????? ???????????????? P60\n?? Wh & ?????????? ????????",
    "????? ???????????????? P70\n?? Wh & ?????????? ????????",
    "????? ???????????????? X20\n?? Wh & ?????????? ????????",
    "????? ???????????????? X25\n?? Wh & ?????????? ????????",
    "????? ???????????? ??????\n?? Wh & ?????????? ????????",
    "????? ???????????? ?????????\n?? Wh & ?????????? ????????",
    "????? ?????????? ??????????\n?? Wh & ?????????? ????????",
    "????? ????????  ??????\n?? Wh & ?????????? ????????",
    "????? ???????? ?????????\n?? Wh & ?????????? ????????",
    "????? ???????? ????????????\n?? Wh & ?????????? ????????",
    "????? ???????????????? GREEN\n?? Wh & ?????????? ????????",
    "????? ???????????????? ??????\n?? Wh & ?????????? ????????",
    "????? ???????????????? ????????????\n?? Wh & ?????????? ????????",
    "????? ???????????????? ?????????\n?? Wh & ?????????? ????????",
    "????? ???????????????? P22 GREEN\n?? Wh & ?????????? ????????",
    "????? ???????????????? P22 ????????????\n?? Wh & ?????????? ????????",
    "????? ???????????????? P60 ????????\n?? Wh & ?????????? ????????",
    "????? ???????????????? P60 ??????\n?? Wh & ?????????? ????????",
    "????? ???????????????? P60 ????????????\n?? Wh & ?????????? ????????",
    "<I{•----» ???????? «----•}I>"
  }, nil,"BROS WALLHACK MENU")
  if SILAHMENU == nil then
  else
    if SILAHMENU[1] == true then
      WE7420()
    end
    if SILAHMENU[2] == true then
      WE7570()
    end
    if SILAHMENU[3] == true then
      WE7870()
    end
    if SILAHMENU[4] == true then
      KIRIN650()
    end
    if SILAHMENU[5] == true then
      KIRIN655()
    end
    if SILAHMENU[6] == true then
      KIRIN658()
    end
    if SILAHMENU[7] == true then
      KIRIN710()
    end
    if SILAHMENU[8] == true then
      KIRIN970()
    end
    if SILAHMENU[9] == true then
      WMP10()
    end
    if SILAHMENU[10] == true then
      WMP22()
    end
    if SILAHMENU[11] == true then
      WMP23()
    end
    if SILAHMENU[12] == true then
      WMP60()
    end
    if SILAHMENU[13] == true then
      WMP70()
    end
    if SILAHMENU[14] == true then
      WMX20()
    end
    if SILAHMENU[15] == true then
      WMX25()
    end
    if SILAHMENU[16] == true then
      CER()
    end
    if SILAHMENU[17] == true then
      CEW()
    end
    if SILAHMENU[18] == true then
      CKG()
    end
    if SILAHMENU[19] == true then
      CKR()
    end
    if SILAHMENU[20] == true then
      CKW()
    end
    if SILAHMENU[21] == true then
      CKY()
    end
    if SILAHMENU[22] == true then
      CMG()
    end
    if SILAHMENU[23] == true then
      CMR()
    end
    if SILAHMENU[24] == true then
      CMY()
    end
    if SILAHMENU[25] == true then
      CMW()
    end
    if SILAHMENU[26] == true then
      CMP22G()
    end
    if SILAHMENU[27] == true then
      CMP22Y()
    end
    if SILAHMENU[28] == true then
      CMP60B()
    end
    if SILAHMENU[29] == true then
      CMP60R()
    end
    if SILAHMENU[30] == true then
      CMP60Y()
    end
    if SILAHMENU[31] == true then
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

function SILAHMENU()
POX = _G["gg"]["multiChoice"]({"-| ??ss ??????\nL?[?????]","-| ?? ??????\nL?[????]","-| ?????? 100?\nL?[????]","-| ?????? 360°\nL?[????]","-| ??????? ???\nL?[????]","-| Headshot ????\nL?[????]","-| ????? ??????\nL?[????]","-| ???s????\nL?[????]","????????"}, nil, "Bros Hack Team Menu")
if POX == nil then
else
if POX[1] == true then
LOB1()
end--BROSHACKTEAM
if POX[2] == true then
LOB2()
end--BROSHACKTEAM
if POX[3] == true then
LOB3()
end--BROSHACKTEAM
if POX[4] == true then
LOB4()
end--BROSHACKTEAM
if POX[5] == true then
LOB5()
end--BROSHACKTEAM
if POX[6] == true then
LOB6()
end--BROSHACKTEAM
if POX[7] == true then
LOB7()
end--BROSHACKTEAM
if POX[8] == true then
LOB8()
end--BROSHACKTEAM
if POX[9] == true then
HOME()
end--BROSHACKTEAM
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
gg.toast("??LESS RECOİL??")
file:write(os.date("%d %m %Y - %H %M %S : [L] Less Recoil Açıldı\n"))
end

function LOB2()
  function PROFESSOR()
end
function setvalue(A0_37, A1_38, A2_39)
PROFESSOR("Modify address value(Address, value type, value to be modified)")
local professor = { }
professor[1] = { }
professor[1].address = A0_37
professor[1].flags = A1_38
professor[1].value = A2_39
gg.setValues(professor)
end

gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
professor=0x13C44A0
setvalue(so+professor,16,0)
gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
professor=0x37CEB1C
setvalue(so+professor,16,0)
gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
professor=0x387D280
setvalue(so+professor,16,0)
gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
professor=0x387D2E0
setvalue(so+professor,16,0)
gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
professor=0x37CEB7C
setvalue(so+professor,16,0)
gg.clearResults()
gg.toast("??NO RECOİL??")
file:write(os.date("%d %m %Y - %H %M %S : [L] No Recoil Açıldı\n"))
end

function LOB3()


gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2046820353", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.clearResults()
 gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
py=0x263E53C
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start 
py=0x11B5E10
setvalue(so+py,4,2046820353) 
so=gg.getRangesList("libUE4.so")[1].start 
py=0x52B1B30
setvalue(so+py,16,0) 
so=gg.getRangesList("libUE4.so")[1].start 
py=0x263E4DC
setvalue(so+py,16,0) 
so=gg.getRangesList("libUE4.so")[1].start 
py=0x263E610
setvalue(so+py,16,500) 
gg.setRanges(16384)
gg.searchNumber('-290,174,237', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('-290,174,237', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress('E00', -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.toast("??Aimbot 500 Metre Aktif??")
file:write(os.date("%d %m %Y - %H %M %S : Aimbot 360° Açıldı\n"))
end

function LOB5()
function PROFESSOR()
end
function setvalue(A0_37, A1_38, A2_39)
PROFESSOR("Modify address value(Address, value type, value to be modified)")
local professor = { }
professor[1] = { }
professor[1].address = A0_37
professor[1].flags = A1_38
professor[1].value = A2_39
gg.setValues(professor)
end

gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
professor=0x263E670
setvalue(so+professor,16,9999)
_G["gg"]["toast"]("Aimlock")
file:write(os.date("%d %m %Y - %H %M %S : [L] Aim Lock Açıldı\n"))
end--BROSHACK

function LOB6()
file:write(os.date("%d %m %Y - %H %M %S : Kafadan Menü Girildi\n"))
kafadan=gg.choice({
	"??Kafadan Vurma %60??",
	"??Kafadan Vurma %80??",
	"??Kafadan Vurma %100??",
	"??Geri??"
	},nil,"Kafadan Vurma Menü")
	
if kafadan == 1 then
kafadan()
end
if kafadan == 2 then
kafadan2()
end
if kafadan == 3 then
kafadan3()
end
if kafadan == 4 then
kafadan4()
end
end


	
function kafadan()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-2.92050004005;-86.45761108398;-88.66608428955;16;26::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-860", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.15122038126;90.48510742188;-88.73961639404;18;28::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18;28::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-960", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Headshot 60%")
end

function kafadan2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-2.92050004005;-86.45761108398;-88.66608428955;16;26::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-860", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.15122038126;90.48510742188;-88.73961639404;18;28::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18;28::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-960", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Headshot 80%")
end

function kafadan3()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(92)
  gg.editAll("-89999960", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(92)
  gg.editAll("-99999960", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("245", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("150;85;45;-129;-85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Head Shot %10")	
end

function kafadan4()
HOME()
end

function LOB7()
magic=gg.alert("2 Farklı Magic Var Hangisini Kullanmak İstersin?","V1","V2")
if magic == 1 then
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("200", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(56)
gg.editAll("-1339", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Magic Bullet V1 Aktif")
file:write(os.date("%d %m %Y - %H %M %S : V1 Magic Bullet Açıldı\n"))
end

if magic == 2 then
gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1F;-8.6457681e12F;15F;28F;16F;26F;8F;18F:512", 16, false, 536870912, 0, -1)
    gg.searchNumber("15.0F;28.4F;16.0F;26.0F;8.4F;18.4F:512", 16, false, 536870912, 0, -1)
    gg.getResults(500)
    gg.editAll("95", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("9.20161819458.43;25;30.5", 16, false, 536870912, 0, -1)
    gg.searchNumber("25;30.5", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("700", 16)
    gg.clearResults()
    gg.toast("Magic Bullet V2 Aktif")
    file:write(os.date("%d %m %Y - %H %M %S : V2 Magic Bullet Açıldı\n"))
end
end

function LOB8()
  function PROFESSOR()
end
function setvalue(A0_37, A1_38, A2_39)
PROFESSOR("Modify address value(Address, value type, value to be modified)")
local professor = { }
professor[1] = { }
professor[1].address = A0_37
professor[1].flags = A1_38
professor[1].value = A2_39
gg.setValues(professor)
end

gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
professor=0x13C4A60
setvalue(so+professor,16,147)
file:write(os.date("%d %m %Y - %H %M %S : [L] Small Crosshair Açıldı\n"))
end--BROSHACK

function MN4()
oxl = gg["multiChoice"]({"-| ?????\n L?[?????]","-| ???? ???\n L?[????]","-| ????????? ??????\nL?[?????]","-| s?s???? ??????\nL?[????]","-| s????? ????????\nL?[????]","-| ???s?? ???????\nL?[????]","-| ????? ???\nL?[????]","-| ????? ???? ????\nL?[????]","-| ????? ????s??\nL?[????]","-| ?ü???? ?????\nL?[????]","????????"}, nil, "???BROS TEAM???")
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
if oxl[11] == true then
HOME()
end
end
BOSS = -1
end
function OYUN20()
function PROFESSOR()
end
function setvalue(A0_37, A1_38, A2_39)
PROFESSOR("Modify address value(Address, value type, value to be modified)")
local professor = { }
professor[1] = { }
professor[1].address = A0_37
professor[1].flags = A1_38
professor[1].value = A2_39
gg.setValues(professor)
end

gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
professor=0x3CB2478
setvalue(so+professor,16,0)
gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
professor=0x2636440
setvalue(so+professor,4,0)
gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
professor=0x3912DB4
setvalue(so+professor,1,-118)
gg.clearResults()
file:write(os.date("%d %m %Y - %H %M %S : [L] Yüksek Hasar Açıldı\n"))
end

function OYUN1(...)
  gg.clearResults()
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifsbk")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/1950038955_3090_0.12.0.11023_20190425070710_1400806008_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifsbk")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/1950038955_3090_0.12.0.11023_20190425070710_1400806008_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifsbk")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/1950038955_3090_0.12.0.11023_20190425070710_1400806008_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/puffer_res.eifsbk")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Paks/1950038955_3090_0.12.0.11023_20190425070710_1400806008_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/VipCodees")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackeBROStra/ShadowTrackeBROStra/Saved/Logs")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
gg["toast"]("Antena")
file:write(os.date("%d %m %Y - %H %M %S : [LOG TEMİZLENDİ] Anten Açıldı\n"))
end

function OYUN2(...)
  function PROFESSOR()
end
function setvalue(A0_37, A1_38, A2_39)
PROFESSOR("Modify address value(Address, value type, value to be modified)")
local professor = { }
professor[1] = { }
professor[1].address = A0_37
professor[1].flags = A1_38
professor[1].value = A2_39
gg.setValues(professor)
end

gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
professor=0x38802B0
setvalue(so+professor,16,265)
file:write(os.date("%d %m %Y - %H %M %S : [L] İpad Wiev Açıldı\n"))
end

function OYUN3(...)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.getResults(1)
gg.searchNumber(":Default__MaterialExpressionLandscapeGrassOutput", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(0)
gg.getResults(500)
gg.editAll("0", gg.TYPE_BYTE)
gg.alert("???Çim Yok???")
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
BROS = gg["multiChoice"]({"-| ??? ????? ???s\nL?","-| ???98 ????? ???s\nL?","-| M24 ????? ???s\nL?","????????"}, nil, "BROSHACK TEAM")
if BROS == nil then
else
if BROS[1] == true then
NO1()
end
if BROS[2] == true then
NO2()
end
if BROS[3] == true then 
NO4()
end
if BROS[4] == true then
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
  gg.toast("Long jump Activated??")
  file:write(os.date("%d %m %Y - %H %M %S : Long Jump Açıldı\n"))
end

function OYUN7(...)
function PROFESSOR()
end
function setvalue(A0_37, A1_38, A2_39)
PROFESSOR("Modify address value(Address, value type, value to be modified)")
local professor = { }
professor[1] = { }
professor[1].address = A0_37
professor[1].flags = A1_38
professor[1].value = A2_39
gg.setValues(professor)
end

gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start
professor=0x3B32A60
setvalue(so+professor,4,-1222130000)
file:write(os.date("%d %m %Y - %H %M %S : Black Sky Açıldı\n"))
end

function OYUN8(...)
GAMAT = gg["multiChoice"]({"? ???? Jump","? ????? Jump ","?? ????? Jump","??? ????? Jump","????????"}, nil, "??BROS CHANNEL SCRİPT??")
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
GAMAT = gg["multiChoice"]({"???? ????[??]","???? ????[?????]","????????"}, nil, "??ByMisakiMey??")
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
    print("?????????????")
    print("? Thank you |Coder @OfficialAlfaa & ByMisakiMey| ??")
    print("?????????????????")
    print("Script Pubg Version 1.3.0 ")
    print("?? Telegram Me : ? @OfficialAlfaa & @ByMisakiMey ? ")
    print("?? Telegram Channel : ? @BrosHackTeam ? ?")
    print("OWNER @OfficialAlfaa & @ByMisakiMey")
    gg.setVisible(true)
    file:write(os.date("%d %m %Y - %H %M %S : Script Kapatıldı!\n"))
    file:write("\n               ? @BrosHackTeam ?")
    file:write("\n\nLog Tutuldu!\nCoder:????:????????\nTelegram:@OfficialAlfaa\nTelegram:@ByMisakiMey\nChannel:@BrosHackTeam\nOwner: @OfficialAlfaa & @ByMisakiMey")
    file:write("\n------¬-------¬-------¬--------¬\n---==--¬---==--¬---==--¬---====-\n------T-----------¦----¦L-----¬-\n---==--¬---==--¬--¦----¦-L===--¬\n------T---¦----¦L---------------\nL=====--L=---L=--L====--L=====--\n")
    file:write("\n--¬----¬------¬-------¬---¬----¬\n--¦----¦---==--¬---==--¬--¦-----\n-------¦-------¦--¦--L=------=--\n---==--¦---==--¦--¦----¬---=--¬-\n--¦----¦--¦----¦L---------¦-L--¬\nL=---L=-L=---L=--L====--L=---L=-\n")
    gg.copyText("t,me/BrosHackTeam")
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
