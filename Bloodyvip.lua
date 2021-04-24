on=' : ✔'
off=' : ✘'

less_checker=off
aim_checker=off
anten_checker=off
cim_checker=off


function banblock()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("845,537,326,661,632;579,451,217,772,544", gg.TYPE_QWORD)
gg.refineNumber("845,537,326,661,632", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196864;196628", gg.TYPE_DWORD)
gg.refineNumber("196864", gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll("131842", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("190000~199999;196864", gg.TYPE_DWORD)
gg.refineNumber("190000~199999", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("131842", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67240192;84148993", gg.TYPE_DWORD)
gg.refineNumber("67240192", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("131842", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67305729;67305730", gg.TYPE_DWORD)
gg.refineNumber("67305729", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("131842", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131584;393728", gg.TYPE_DWORD)
gg.refineNumber("131584", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("131842", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("197120;786944", gg.TYPE_DWORD)
gg.refineNumber("197120", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("131842", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("70368744177664;288232579469934592", gg.TYPE_QWORD)
gg.refineNumber("70368744177664", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD)
gg.refineNumber("582749752655872", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4398046511104;544434349408256", gg.TYPE_QWORD)
gg.refineNumber("4398046511104", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("578351706144768;564058054983680", gg.TYPE_QWORD)
gg.refineNumber("578351706144768", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288,233,678,981,562,368", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("577,252,194,516,992;288,233,678,981,562,368", gg.TYPE_QWORD)
gg.refineNumber("577,252,194,516,992", gg.TYPE_QWORD)
gg.getResults(31521)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("565157566611456;566257078239232", gg.TYPE_QWORD)
gg.refineNumber("565157566611456", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1717960818", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0 , -1 , 0)
gg.getResults(14)
gg.editAll("720914", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1717960825", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0 , -1 , 0)
gg.getResults(13)
gg.editAll("720914", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1717960822", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0 , -1 , 0)
gg.getResults(12)
gg.editAll("720914", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1717960819", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0 , -1 , 0)
gg.getResults(31)
gg.editAll("720914", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1717960816", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0 , -1 , 0)
gg.getResults(21)
gg.editAll("720914", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1717960820", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0 , -1 , 0)
gg.getResults(18)
gg.editAll("720914", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1717960819", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0 , -1 , 0)
gg.getResults(20)
gg.editAll("720914", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1717960824", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0 , -1 , 0)
gg.getResults(15)
gg.editAll("720914", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ANTİBAN AKTİF")
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
gg.toast("「VİP LOG SİLİCİ AKTİF」")
end




gg.alert([[
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
 ━━━━━━━━━━━━━━━━━━━
  BLOODY VİP CHANNEL V1.0
   ⟬ t.me/bloodyhackchannel ⟭
 ━━━━━━━━━━━━━━━━━━━
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
]])

function HOME()
ana=gg.choice({
      "┌| 𝐀𝐧𝐭𝐢 𝐁𝐚𝐧 𝐌𝐞𝐧𝐮\n╚[ʟᴏʙɪ]",
      "┌| 𝐒𝐢𝐥𝐚𝐡 𝐇𝐢𝐥𝐞𝐥𝐞𝐫𝐢\n╚[ʟᴏʙɪ+ᴏʏᴜɴ]",
      "┌| 𝐎𝐲𝐮𝐧 𝐇𝐢𝐥𝐞𝐥𝐞𝐫𝐢\n╚[ᴏʏᴜɴ]",
      "◆━━━━━▣ Çıkış ▣━━━━━━◆"
},nil, 'BLOODY VİP')
if ana==1 then
ant()
end
if ana==2 then
gun()
end
if ana==3 then
game()
end
if ana==4 then
os.exit()
end
PUBGMH=-1
end

function ant()
bloodyr=gg.choice({
	"𝐕𝐢𝐩 𝐀𝐧𝐭𝐢 𝐁𝐚𝐧[ʟᴏʙɪ]",
	"𝐋𝐨𝐠 𝐒𝐢𝐥[ʟᴏʙɪ+ᴏʏᴜɴ]",
	"◆━━━▣ 𝐆𝐞𝐫𝐢 ▣━━━◆"
	})
if bloodyr == 1 then
banblock()
end
if bloodyr == 2 then
log()
end
if bloodyr == 3 then
HOME()
end
end

function gun()
a=gg.choice({
"🛡️Güvenli Sekmeme🛡️"..less_checker,
"🔫Nişan Yardımı Arttırma🔫"..aim_checker,
"🔙Ana Menü🔙"
})

if a == 1 then
if less_checker == off then
less_checker = on
gg.clearResults()
gg.searchNumber("-1283514890403435972", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
bir=gg.getResults(99)
gg.editAll("-1288018490030810565", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
iki=gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
else
if less_checker == on then
less_checker = off
gg.setValues(bir)
gg.setValues(iki)
gg.toast('Kapandı')
end
end
end

if a == 2 then
aim_checker=on
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
gg.toast("Açık")
end

if a == 3 then
HOME()
end
end

function game()
b=gg.choice({
	"📡Anten Adam Görme[Oyun]📡"..anten_checker,
	"🎥Geniş Açı Görme[Oyun+Lobi]🎥",
	"🌌Siyah Gök Yüzü[Oyun]🌌",
	"⛳Çim Kaldır[Lobi]⛳"..cim_checker,
	"🔙Geri🔙"})
	
if b==1 then
if anten_checker==off then
anten_checker=on
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
  value1=gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Açıldı")
else
  anten_checker=off
  gg.setValues(value1)
  gg.toast("Kapandı")
end
end

if b==2 then
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
end

if b==3 then
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
gg.toast("Aktif")
end
end

if b==4 then
if cim_checker==off then
cim_checker=on
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.getResults(1)
gg.searchNumber(":Default__MaterialExpressionLandscapeGrassOutput", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(0)
b=gg.getResults(500)
gg.editAll("0", gg.TYPE_BYTE)
gg.alert("⛳🤷Çim Yok🤷⛳")
else
cim_checker=on
gg.setValues(b)
gg.toast('Kapandı')
end
end

if b==5 then
HOME()
end
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
