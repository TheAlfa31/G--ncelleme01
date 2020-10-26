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
cvd="\n██╗░░░██╗██╗██████╗░\n██║░░░██║██║██╔══██╗\n╚██╗░██╔╝██║██████╔╝\n░╚████╔╝░██║██╔═══╝░\n░░╚██╔╝░░██║██║░░░░░\n░░░╚═╝░░░╚═╝╚═╝░░░░░\n                                                   1.5"
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
gg.alert("🔰Bu Bölüm üzerinde Hala Çalışılıyor...🔰")
HOME()
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
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
  os.remove("/data/data/com.tencent.ig/app_appcache")
  os.remove("/data/data/com.tencent.ig/app_bugly")
  os.remove("/data/data/com.tencent.ig/app_crashrecord")
  os.remove("/data/data/com.tencent.ig/cache")
  os.remove("/data/data/com.tencent.ig/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  local equation1 = 99999
  local CODE_APP = 16384
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41F;16384;16384;16384;16384;16384::24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99900000)
  if gg.getResultCount() == 0 then
    print("Değerler Bulunamıyor,⚠️Oyunu Yeniden Başlat!⚠️")
    gg.processKill()
    os.exit()
  else
    gg.toast("PROCESS 25% COMPLETED")
    jd = gg.getResultCount(1)
    equation = gg.getResults(jd)
    do
      for i = 1, jd do
        gg.addListItems({
          [1] = {
            address = equation[jd].address + 48,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address + 100,
            flags = 4,
            freeze = true,
            value = 4448
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address - 252,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address - 236,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address - 232,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address - 72,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address - 68,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address - 64,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address + 30,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address + 130,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address + 180,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address + 200,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address + 300,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address + 310,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address + 360,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address + 450,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address + 650,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = equation[jd].address + 800,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794057780,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794057796,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794057800,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794057960,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794057964,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794057968,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794058062,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794058162,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794058212,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794058232,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794058332,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794058342,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794058392,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794058482,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794058682,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = 2794058832,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("131842;132098", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("135682;144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("134658;131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("134914;262403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setVisible(false)
        gg.searchNumber("134914;262403", gg.TYPE_DWORD)
        gg.refineNumber("134914", gg.TYPE_DWORD)
        gg.getResults(99999)
        gg.setVisible(false)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setVisible(false)
        gg.searchNumber("133378;262403", gg.TYPE_DWORD)
        gg.refineNumber("133378", gg.TYPE_DWORD)
        gg.getResults(99999)
        gg.setVisible(false)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("131330;133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setVisible(false)
        gg.searchNumber("4096;135682", gg.TYPE_DWORD)
        gg.refineNumber("4096", gg.TYPE_DWORD)
        gg.getResults(99999)
        gg.setVisible(false)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        local t = gg.getResults(8268)
        do
          do
            for i, i in ipairs(t) do
              t[i].flags = gg.TYPE_DWORD
              t[i].value = "16384"
              t[i].freeze = true
            end
          end
        end
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("67109633;131,330;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("12,288;131,330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("135,682;135,682;131,330;131,330::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1,573,376", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1,048,576;16384::24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("70,658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("524,288;131,330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("269,223,424", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("787,968", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber("67,109,633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber("67,109,377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("1.1754945e-37;4.2317801e-37:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("1.1754945e-37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineAddress("91C", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.editAll("1.1754945e-37", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
        gg.searchNumber("35651585", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineAddress("91C", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
        revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.sleep(4949)
        gg.editAll("35651585", gg.TYPE_DWORD)
        gg.refineAddress("EquatioN", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("6,619,250;6,619,244;7,536,737;101;6,619,252;7,602,291;7,536,757;6,881,375;6,357,095;6,619,245;7,274,604;6,357,091;108;3,211,313;3,538,992;3,538,996;3,145,783;3,145,783:89", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("12,547", gg.TYPE_DWORD)
        gg.getResults(9999999)
        gg.editAll("9875474", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("135682", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("131584", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("131842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setVisible(false)
        gg.searchNumber("135682;144387", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.searchNumber("135682", gg.TYPE_DWORD)
        gg.getResults(50000)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setVisible(false)
        gg.searchNumber("134658;131586", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.searchNumber("134658", gg.TYPE_DWORD)
        gg.getResults(50000)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setVisible(false)
        gg.searchNumber("134914;262403", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.searchNumber("134914", gg.TYPE_DWORD)
        gg.getResults(50000)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setVisible(false)
        gg.searchNumber("133378;262403", gg.TYPE_DWORD)
        gg.searchNumber("133378", gg.TYPE_DWORD)
        gg.getResults(50000)
        gg.setVisible(false)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setVisible(false)
        gg.searchNumber("131330;133634", gg.TYPE_DWORD)
        gg.searchNumber("131330", gg.TYPE_DWORD)
        gg.getResults(50000)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1405628", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(" 98834", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber(" 98834", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("131330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("7077893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("7,077,901", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("167772164", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.clearResults()
        gg.setVisible(false)
        gg.searchNumber("7077893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("1,130,852,172;1,852,139,884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("131842;132098", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("135682;144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("134658;131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("134914;262403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setVisible(false)
        gg.searchNumber("134914;262403", gg.TYPE_DWORD)
        gg.refineNumber("134914", gg.TYPE_DWORD)
        gg.getResults(99999)
        gg.setVisible(false)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setVisible(false)
        gg.searchNumber("133378;262403", gg.TYPE_DWORD)
        gg.refineNumber("133378", gg.TYPE_DWORD)
        gg.getResults(99999)
        gg.setVisible(false)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("131330;133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setVisible(false)
        gg.searchNumber("4096;135682", gg.TYPE_DWORD)
        gg.refineNumber("4096", gg.TYPE_DWORD)
        gg.getResults(99999)
        gg.setVisible(false)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        local t = gg.getResults(8268)
        do
          do
            for i, i in ipairs(t) do
              t[i].flags = gg.TYPE_DWORD
              t[i].value = "16384"
              t[i].freeze = true
            end
          end
        end
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("262,403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("67109633;131,330;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("12,288;131,330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("135,682;135,682;131,330;131,330::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1,573,376", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1,048,576;16384::24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("524,288;131,330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("269,223,424", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("787,968", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber("67,109,633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber("67,109,377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("1.1754945e-37;4.2317801e-37:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("1.1754945e-37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineAddress("91C", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.editAll("1.1754945e-37", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
        gg.searchNumber("35651585", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineAddress("91C", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
        revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.sleep(4949)
        gg.editAll("35651585", gg.TYPE_DWORD)
        gg.refineAddress("EquatioN", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("6,619,250;6,619,244;7,536,737;101;6,619,252;7,602,291;7,536,757;6,881,375;6,357,095;6,619,245;7,274,604;6,357,091;108;3,211,313;3,538,992;3,538,996;3,145,783;3,145,783:89", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("135682", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("131584", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("131842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("157567", gg.TYPE_DWORD)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("135938", gg.TYPE_DWORD)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("135170", gg.TYPE_DWORD)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("135426", gg.TYPE_DWORD)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("135212", gg.TYPE_DWORD)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("131330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("7077893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("7,077,901", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("167772164", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.clearResults()
        gg.clearResults()
        gg.setVisible(false)
        gg.searchNumber("7077893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.searchNumber("67,108,914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("1,130,852,172;1,852,139,884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("9,999;8,000,000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1,069,547,520;1,069,547,520", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1,651,076,143", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_JAVA_HEAP)
        gg.searchNumber("1651076143", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("1651076143", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("1,936,876,916", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1,801,989,935;1,919,905,893;1,768,710,958;1,920,233,061", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll("16384", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("1,348,759,109;1953067887;1,634,692,166;1,920,287,604::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.setVisible(false)
        gg.searchNumber("1634692166", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10)
        gg.setVisible(false)
        gg.editAll("1634692266", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("196864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("196864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("16384", gg.TYPE_DWORD)
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
        os.remove("/data/data/com.tencent.ig/app_appcache")
        os.remove("/data/data/com.tencent.ig/app_bugly")
        os.remove("/data/data/com.tencent.ig/app_crashrecord")
        os.remove("/data/data/com.tencent.ig/cache")
        os.remove("/data/data/com.tencent.ig/code_cache")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
        os.remove("/storage/emulated/0/tencent")
        os.remove("/storage/emulated/0/MidasOverse")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
        os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
        os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
        os.remove("/storage/emulated/0/tencent")
        os.remove("/storage/emulated/0/MidasOverse")
        os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
        os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
        os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
        os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
        os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
        os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
        os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
        os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
        os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
        os.remove("/storage/emulated/0/tencent")
        os.remove("/storage/emulated/0/MidasOverse")
        os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
        os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
        os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
        os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
        os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
        os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
        os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
        os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
      end
    end
  end
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
	"🔫Less Recoil [Lobi+Oyun]🔫",
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
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TENDEX(X,Y,Z,F,O)  gg.setRanges(X)gg.searchNumber(Y,gg.TYPE_DWORD)gg.getResults(Z)gg.editAll(F,gg.TYPE_DWORD)gg.clearResults()gg.toast("ACTIVATING") end 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 function BAIT(X,Y,Z,O)  gg.setRanges(X)gg.searchNumber(Y,gg.TYPE_DWORD)gg.getResults(Z)gg.clearResults()gg.toast("ACTIVATING") end 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function RECOIL(X,Y,J,Z,F,O)  gg.setRanges(X)gg.searchNumber(Y,gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)gg.searchNumber(J,gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)gg.getResults(Z)gg.editAll(F,gg.TYPE_DWORD)gg.clearResults()gg.toast(O) end 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
TENDEX(8,"67109633",50000,"0")
TENDEX(8,"67109633",50000,"0")
TENDEX(8,"67109633",50000,"0")
TENDEX(8,"135682",11082001,"0")
TENDEX(8,"134658",11082001,"0")
TENDEX(8,"133378",11082001,"0")
TENDEX(8,"135938",11082001,"0")
TENDEX(8,"134914",11082001,"0")
TENDEX(8,"133635",11082001,"0")
TENDEX(8,"131586",11082001,"0")
TENDEX(8,"131842",11082001,"0")
TENDEX(8,"133634",11082001,"0")
TENDEX(8,"134402",11082001,"0")
TENDEX(8,"144387",11082001,"0")
TENDEX(8,"147971",11082001,"0")
TENDEX(8,"196867",11082001,"0")
TENDEX(8,"70658",11082001,"0")
TENDEX(8,"67110145",11082001,"0")
TENDEX(8,"327939",11082001,"0")
TENDEX(8,"262403",11082001,"0")
TENDEX(8,"131331",11082001,"0")
TENDEX(8,"83887361",11082001,"0")
TENDEX(8,"100664577",11082001,"0")
TENDEX(8,"117441793",11082001,"0")
TENDEX(8,"135682",11082001,"0")
TENDEX(8,"134658",11082001,"0")
TENDEX(8,"133378",11082001,"0")
TENDEX(8,"135938",11082001,"0")
TENDEX(8,"134914",11082001,"0")
TENDEX(8,"133635",11082001,"0")
TENDEX(8,"131586",11082001,"0")
TENDEX(8,"131842",11082001,"0")
TENDEX(8,"133634",11082001,"0")
TENDEX(8,"134402",11082001,"0")
TENDEX(8,"144387",11082001,"0")
TENDEX(8,"147971",11082001,"0")
TENDEX(8,"196867",11082001,"0")
TENDEX(8,"70658",11082001,"0")
TENDEX(8,"67110145",11082001,"0")
TENDEX(8,"327939",11082001,"0")
TENDEX(8,"262403",11082001,"0")
TENDEX(8,"131331",11082001,"0")
TENDEX(8,"83887361",11082001,"0")
TENDEX(8,"100664577",11082001,"0")
TENDEX(8,"117441793",11082001,"0")
TENDEX(8," 8241920931592632165",50000,"8241820031592000165")
TENDEX(8,"131.072",50000,"0")
TENDEX(8,"67.043.328",50000,"0")
TENDEX(8,"66.977.792",50000,"0")
TENDEX(8,"196.608",50000,"0")
TENDEX(8,"4.128.768",50000,"0")
TENDEX(8,"2.031.616",50000,"0")
TENDEX(8,"16.777.216",50000,"0")
TENDEX(8,"134.218.241",50000,"0")
TENDEX(8,"65.535",50000,"0")
BAIT(8,"67,865,722~69,866,014",2000)
BAIT(8,"117,768,197",50000)
BAIT(8,"-16,613,685",50000)
RECOIL(gg.REGION_ANONYMOUS,"1,348,759,109;1,953,067,887;1,634,692,166;1,920,287,604:512","1,634,692,166",10,"0","LESS RECOIL ~ TENDEX")
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
	"🔫No Recoil[Lobi+Oyun]🔫",
	"🔫Aim Lock[Lobi+Oyun]🔫",
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
  gg.searchNumber("1,868,784,978;1,850,305,641;28,518;13,212::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,850,305,641", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;0;0;1,028,443,341;1,090,519,040;1,036,831,949;1,057,803,469;1,092,091,904;1,097,859,072::33", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("90", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("No Recoil Aktif")
end

if br==3 then
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP|gg.REGION_CODE_APP)
  gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  AIMLOCKOFF1=gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("ᴀɪᴍʟᴏᴄᴋ")
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
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "📽"},
{["value"] = 4715268810984259584, ["type"] = 32},
{["lv"] = 1130102784, ["offset"] = -24, ["type"] = 32},
}
qmxg = {
{["value"] = 438, ["offset"] = -24, ["type"] = 16},
}
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
	"✔️Uzun Atlama[Oyun]✔️",
	"✨Sihirli Mermi[Oyun]✨",
	"💀Kafadan Vurma %95[Oyun]💀",
	"➕ Küçük Artı [Oyun]➕",
	"🔫Tepmeyi Kaldır[Lobi+Oyun]🔫",
	"🧱Duvar Tırmanma Kapat[Oyun]🧱",
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
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("7.0064923e-45F;0.6~1;1065353216D;100F;1065353216D;2500000000F;0.10000000149F;88F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("7.0064923e-45F;0.6~1;1065353216D;100F;1065353216D;2500000000F;0.10000000149F;88F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.6~1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.6~1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2500)
gg.editAll("3.5241295", gg.TYPE_FLOAT)
gg.editAll("3.5241295", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("300;0;0.05000000075;2;25::17", gg.TYPE_FLOAT, false)
gg.searchNumber("300;0;0.05000000075;2;25::17", gg.TYPE_FLOAT, false)
gg.refineNumber("0.05000000075", gg.TYPE_FLOAT, false)
gg.refineNumber("0.05000000075", gg.TYPE_FLOAT, false)
gg.getResults(2400)
gg.editAll("2.1241295", gg.TYPE_FLOAT)
gg.editAll("2.1241295", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Uzun Atlama Aktif")
end

if birb==3 then
mg=gg.alert(
	"✨Sihirli Mermi[Oyun]✨",
    "✨Normal✨",
    "💀Abartılmış💀"
)

if mg==1 then
gg.clearResults()
gg.searchNumber("69.5;35;33", 16, false, 536870912, 0, -1)
gg.getResults(6)
gg.editAll("160;140;230", 16)
gg.clearResults()
end


if mg==2 then
gg.clearResults()
gg.searchNumber("69.5;35;33", 16, false, 536870912, 0, -1)
gg.getResults(6)
gg.editAll("330;290;470", 16)
gg.clearResults()
end
end



if birb==4 then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600;610", gg.TYPE_FLOAT)
gg.clearResults()
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
  gg.searchNumber("1,868,784,978;1,850,305,641;28,518;13,212::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,850,305,641", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;0;0;1,028,443,341;1,090,519,040;1,036,831,949;1,057,803,469;1,092,091,904;1,097,859,072::33", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("90", gg.TYPE_FLOAT)
  gg.clearResults()
end

if birb==7 then
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4,890,205,508,990,664,704", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  WALLJUMPOFF=gg.getResults(100)
  gg.editAll("4,890,205,509,012,684,800", gg.TYPE_QWORD)
  gg.toast("Duvar Tırmanma Kapat")
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
gg.clearResults()
	gg.setRanges(gg.REGION_C_DATA)
	gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(100)
	gg.editAll("2046820353", gg.TYPE_DWORD)
	gg.clearResults()
	gg.setRanges(gg.REGION_C_DATA)
	gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(6)
	gg.editAll("0", gg.TYPE_FLOAT)
	gg.clearResults()
	gg.toast("🎯100m Aim Bot Aktif🎯")
end

if birb==10 then
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
	gg.toast("Duvar Arkası Vurma Aktif")
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
yyy='28'
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
VUNuTsSerEDbkRUFMaYG = '20201028'
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
SnLcYSbBBaTvqtkabKhiy = '20201028'
if os.date("%Y%m%d") > SnLcYSbBBaTvqtkabKhiy then
  hh = gg.alert("⛔Script Süreniz Dolmuştur⛔")
  os.exit()
end
asd()
end

function exit()
os.exit()
end

i="Güncelleme Durumu: Güncelleme Yok"


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
