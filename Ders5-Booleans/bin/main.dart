//Flutter Giriş 1 DART -Yorum Satırları Değişkenler, Numbers, Strings, Booleans, Diziler-Listeler, Haritalar

//Booleans(Doğru-Yanlış)
main() {
  //true - olumlu şeylerde kullanılır (doğru)
  //false - olumsuz şeylerde kullanılır(yanlış)
  bool kapiAcikMi = false;
  String yazi = "dolu bir string ifadesi";
  String bosyazi = "";
  print(bosyazi
      .isEmpty); //isEmpty boş mu onu sorgular; bu yüzden yazi boş olduğu için true döndü
  print(bosyazi
      .isNotEmpty); //isNotEmpty dolu mu onu sorgular; ama yazi boş olduğu için false döndü
  print(yazi.isEmpty); //yazi dolu olduğu için false döndü

  double pi = 3.14;
  print(pi
      .isNaN); //isNaN sayı değil mi? sorusunu sorar. pi sayı değil mi? HAYIR Pİ BİR SAYI

  String piString = "3.14";
  //print(piString.isNan); //YAPILAMAZ ÇÜNKÜ piString türü STRING olan bir değişken
}
