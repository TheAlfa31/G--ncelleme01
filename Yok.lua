function asd()
if os.date("%Y%m%d") > '20300000' then
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

status="✅Hile Güvenli✅\nToplam Banlanan Sayısı:0\nİncelemeye Takılanlar(Tahmin):0\nCheat System Kurbanları:0"


on = " [✅]"
off = " [❌]"



antiban_checkerer = off
antibank_checkerer = off
ucparti_checkerer = off
anten_checker = off
less_checker = off
elli_kafadanchecker = off
elliaimbot_checker = off
magic_checker = off
brutal_kafadanchecker = off
norecoil_checker = off

function HOME()
SN = gg.choice({
   "🛡️Anti-Ban Menü[Lobi]🛡️",
   "💎Safe Menü[Lobi+Oyun]💎",
   "😈Brutal Menü[Lobi+Oyun]😈",
   "⛔Çıkış⛔",
	 }, nil, '✨Zero Hack Vip Menü✨')
	
if SN == nil then else
if SN==1 then F1() end
if SN==2 then F2() end
if SN==3 then F3() end
if SN==4 then Exit() end
end 
  PUBGMH = -1
end

function F1()
saf=gg.choice({
	"🌐Global Anti-Ban[Lobi]🌐"..antiban_checkerer,
	"🎎Kore Anti-Ban[Lobi]🎎"..antibank_checkerer,
	"🛡️3. Parti Önlendi[Lobi]🛡️"..ucparti_checkerer,
	"🔙Geri🔙"
	},nil,"💎Aɳƚι Bαɳ Mҽɳü💎")
	
if saf==1 then
if antiban_checkerer == off then
 antiban_checkerer = on
gg.alert("🛡️𝐀𝐧𝐭𝐢 𝐁𝐚𝐧🛡️")
HOME()
else
antiban_checkerer = on
gg.alert("Anti Banı Bikere Çalıştırman Yeter Kardeşim❤️")
end
end

if saf==2 then
gg.alert('Bakım')
HOME()
----if antibank_checkerer == off then
----antibank_checkerer = on
-----gg.alert("🔰Bu Bölüm üzerinde Hala Çalışılıyor...🔰")
----else
----antibank_checkerer = on
-----gg.alert("Bikere Çalıştırman Yeter Kardeşim❤️")
----end
end

if saf==3 then
gg.alert('Üzerinde Çalışılıyor...')
HOME()
end

if saf==4 then
HOME()
end
end


function F2()
sf=gg.choice({
	"📡Anten [Lobi+Oyun]📡"..anten_checker,
	"🔫Less Recoil [Oyun]🔫"..less_checker,
	"💀%50 Kafadan Vurma[Oyun]💀"..elli_kafadanchecker,
	"🎥Ipad Mod[Oyun]🎥",
	"🔙Geri🔙"
	},nil,"🛡️Hile Menü🛡️")
	
if sf==1 then
if anten_checker == off then
anten_checker = on
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
antenbir=gg.getResults(100)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Lutfen Bekleyiniz")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("32768;-2134900726;32769;-2134900725;32770;-2134900724::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("32769", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
anteniki=gg.getResults(10)
gg.editAll("4", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Anten")
else
if anten_checker == on then
anten_checker = off
gg.setValues(antenbir)
gg.setValues(anteniki)
gg.toast("Anten Kapalı")
end
end
end

if sf==2 then
if less_checker == off then
less_checker = on
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1,348,759,109;1,953,067,887;1,634,692,166;1,920,287,604:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,634,692,166", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  lessrecoil = gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
gg.toast("Less Recoil")
else
if less_checker == on then
less_checker = off
gg.setValues(lessrecoil)
gg.toast("Less Recoil Devre Dışı")
end
end
end

if sf==3 then
if elli_kafadanchecker == off then
elli_kafadanchecker = on
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
kafabir=gg.getResults(10)
gg.editAll("150", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4740038608910024704", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
kafaiki=gg.getResults(100)
gg.editAll("5306590012668116992", gg.TYPE_QWORD)
gg.setVisible(false)
gg.toast("Aktif")
gg.clearResults()
else
if elli_kafadanchecker == on then
elli_kafadanchecker = off
gg.setValues(kafabir)
gg.setValues(kafaiki)
gg.toast("Kapalı")
end
end
end

if sf==4 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("360.0;0.00100000005;-9.38575022e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("360.0;0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-1.4235595e-27;254.70928955078", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("İpad Modu Aktif")
end

if sf==5 then
HOME()
end
end

function F3()
br=gg.choice({
	"📡Anten [Lobi+Oyun]📡"..anten_checker,
	"🔥Magic Brutal[Oyun]🔥"..magic_checker,
    "🤯Brutal Kafadan Vurma[Lobi+Oyun]🤯"..brutal_kafadanchecker,
	"🔫AimBot 360⁰ Yeni[Oyun]🔫"..elliaimbot_checker,
	"🔫Sıfır Sekme[Lobi]🔫"..norecoil_checker,
	"🔙Geri🔙" })
	
if br==1 then
if anten_checker == off then
anten_checker = on
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
antenbir=gg.getResults(100)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Lutfen Bekleyiniz")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("32768;-2134900726;32769;-2134900725;32770;-2134900724::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("32769", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
anteniki=gg.getResults(10)
gg.editAll("4", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Anten")
else
if anten_checker == on then
anten_checker = off
gg.setValues(antenbir)
gg.setValues(anteniki)
gg.toast("Anten Kapalı")
end
end
end

if br==2 then
if magic_checker == off then
magic_checker = on
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1F;-8.6457681e12F;15F;28F;16F;26F;8F;18F:512", 16, false, 536870912, 0, -1)
gg.searchNumber("15.0F;28.4F;16.0F;26.0F;8.4F;18.4F:512", 16, false, 536870912, 0, -1)
magic=gg.getResults(500)
gg.editAll("95", 16)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9.20161819458.43;25;30.5", 16, false, 536870912, 0, -1)
gg.searchNumber("25;30.5", 16, false, 536870912, 0, -1)
magiciki=gg.getResults(100)
gg.editAll("350", 16)
gg.clearResults()
gg.toast("Magic Bullet Brutal")
else
if magic_checker == on then
magic_checker = off
gg.setValues(magic)
gg.setValues(magiciki)
gg.toast("Magic Bullet Brutal Devre Dışı")
end
end
end

if br==3 then
if brutal_kafadanchecker == off then
brutal_kafadanchecker = on
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
kafabir=gg.getResults(10)
gg.editAll("450", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4740038608910024704", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
kafaiki=gg.getResults(100)
gg.editAll("7306590012668116992", gg.TYPE_QWORD)
gg.setVisible(false)
gg.toast("Aktif")
gg.clearResults()
else
if brutal_kafadanchecker == on then
brutal_kafadanchecker = off
gg.setValues(kafabir)
gg.setValues(kafaiki)
gg.toast("Kapalı")
end
end
end

if br==4 then
if elliaimbot_checker == off then
elliaimbot_checker = on
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP|gg.REGION_CODE_APP)
gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
aimvaluebir=gg.getResults(100)
gg.editAll("2046820353", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP|gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
aimvalueiki=gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP|gg.REGION_CODE_APP)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
aimvalueuc=gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.toast("🎯360° Aimbot")
else
if elliaimbot_checker == on then
elliaimbot_checker = off
gg.setValues(aimvaluebir)
gg.setValues(aimvalueiki)
gg.setValues(aimvalueuc)
gg.toast("Aim Bot Devre Dışı")
end
end
end

if br==5 then
if norecoil_checker == off then
norecoil_checker = on
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("495,979,008;-300,938,736;-516,948,194:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-300,938,736", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
norecoil = gg.getResults(551)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Sekmeme Aktif Edildi")
else
if norecoil_checker == on then
norecoil_checker = off
gg.setValues(norecoil)
gg.toast("Sekmeme Kapatıldı")
end
end
end

if br==6 then
HOME()
end
end

function Exit()
print("✅Boost İşlemi Tamamdır✅\n🛡️S16 Vip V1🛡️\n🔥Zero Hack🔥")
gg.skipRestoreState()
  os.exit()
  gg.setVisible(true)
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
VUNuTsSerEDbkRUFMaYG = '99999999'
Password﻿ = 'VUNuTsSerEDbkRUFMaYG'
PS = gg.prompt({'✅Giriş Paneli✅'},{[1]=''},{[1]='text'})
if not PS the﻿n os.exit() 
end 
if PS[1] == Password then 
gg.toast('Key Doğrulandı')
gg.alert("❤️Hoş Geldiniz Efendim❤️")
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
SnLcYSbBBaTvqtkabKhiy = '99999999'
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

i="Güncelleme Durumu: Hile Aktif"


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
