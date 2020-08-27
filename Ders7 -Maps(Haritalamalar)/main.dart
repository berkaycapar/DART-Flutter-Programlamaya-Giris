//Flutter Giriş 1 DART -Yorum Satırları Değişkenler, Numbers, Strings, Booleans, Diziler-Listeler, Haritalar

//Maps(Haritalar)
main() {
//listlere çok benzer indexler string olarak da verilebilir.
//tanımlaması şu şekilde:
//anahtar ve değer var aralarında da : bulunuyor.

  var isimler = {10: "murat", 12: "sevda"};
  print(isimler[12]);
  var meslekler = {"murat": "yazılım", "sevda": "halkla ilişkiler"};
  print("muratın mesleği " + meslekler['murat']);

// en doğru tanımlama -var ifadesi kullanılmadan-
  Map murat = new Map();
  murat = {"anne": "Sevilay", "baba": "muzaffer"};
  print("Murat'ın annesinin adı: " + murat["anne"]);
  //yanlış yazılmış diyelim, şu şekilde değiştirilebilir.
  //bu sefer süslü parantez kullanılmaz.
  murat["anne"] = "Yasemin";
  print("Murat'ın annesinin adı: " + murat["anne"]);
}
