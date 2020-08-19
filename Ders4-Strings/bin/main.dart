//Flutter Giriş 1 DART -Yorum Satırları Değişkenler, Numbers, Strings, Booleans, Diziler-Listeler, Haritalar

//Strings(Yazılar)
main() {
  String ismim =
      "berkay"; //yazılar tek(' ') veya çift(" ") tırnak içerisinde tanımlanabilir, fark eden bir şey olmayacaktır.
  String birinciCumle = "Çift tırnaklar içinde yazılabilir";
  String ikinciCumle = 'Tek tırnaklar içinde yazılabilir';
  String ornek1 = "Ali 'eve geleceğim', dedi";
  String ornek2 = 'Ali "eve geleceğim", dedi';

  //// KAÇIŞ İŞLEMCİSİ (ESCAPE OPERATOR)
  String ornek3 =
      "Ali \"eve geleceğim\", dedi"; // ters slah işareti ile yazı içinde çift tırnak kullanılabilir.
  //-----------------------------------

  //Stringleri yazdıralım
  print(birinciCumle);
  print(ikinciCumle);
  print(ornek1);
  print(ornek2);
  print(ornek3);
  //*-önemli
  int ifade = 100;
  print("String ifadeler, $birinciCumle --- $ifade puan");

  //stringleri birbirine ekleme
  // 1-
  print(ornek1 + ". " + ikinciCumle);
  // 2-
  String eklemeIslemi = ornek1 + ". " + ikinciCumle;
  print(eklemeIslemi);

  // Çok satırlı yazılar
  var coksatirli1 = """ buradan
  başlayarak
  alt satıra inerek
  yazabilirim
  """;
  var coksatirli2 = ''' bunu tek
  tırnaklarla da
  yapabilirim
  ''';
  print(coksatirli1 + " " + coksatirli2);

  //Sayıdan string oluşturma (.toString();)
  double pi = 3.142754194;
  String sayidanGelenYazi = pi.toString();
  print(sayidanGelenYazi);
}
