//Flutter Giriş 1 DART

main() {
  kisafonksiyon1();
  print(kisafonksiyon3());
  selamVer1("hello world!");
  selamVer2("selam");
  print(selamVer2("merhaba")); //2 kere merhaba yazar
  print(selamVer2(
      "deneme")); //2 kere deneme yazar returnü otamatik olarak deneme'yi aldı

  //biraz daha komplike bir örnek yapalım... Liste okutup yazdıran fonksiyon.
  var list = ['apples', 'bananas', 'oranges'];
  listeliFonksiyon(list);

  topla(11, 23);
  carp(2, 7);
  carpmaOptional(2);
  carpmaOptional(2, 27);
}

//en sade ve yalın halde, kısaca fonksiyon tanımlama
kisafonksiyon1() => print("kısa fonksiyon böyle tanımlanır.");
void kisafonksiyon2() => print("kısa fonksiyon böyle tanımlanır.");
String kisafonksiyon3() => "kısa fonksiyon böyle tanımlanır.";

//fonksiyonlara değer gönderme

selamVer1(String selam) {
  print(selam);
}

String selamVer2(String selam) {
  print(selam);
  return selam;
}

String selamVer3(String selam) {
  print(
      selam); //return vermesek de olur. Ama otomatik olarak selamı return eder.
}

List listeliFonksiyon(List arr) {
  print("Listedeki elemanlar");
  arr.forEach((item) {
    //forEach() metodu listedeki tüm elemanlara döner ve onları içinde belirtildiği gibi -burada item olarak belirtilmiş- yazar
    print(
        '${arr.indexOf(item) + 1}: $item'); //.indexOf(item) listenin içindeki ----item---- 'i arıyor ve onun olduğu indexi yazdırıyor. +1 diyerek 0'ı gözardı edebiliriz.
  });
}

topla(num x, num y) {
  print("$x + $y'nin toplama sonucu = ${x + y}");
}

carp(num x, num y) {
  print("$x * $y'nin çarpma sonucu = ${x * y}");
}

//istege bağlı değerler (optional) VE varsayısal değer(default) ayarlama
//eger burda default ayarlama yapmasaydık null gidecekti ve hata gelecekti onun yerine default olarak 1 belirledik.
carpmaOptional(num x, [num y = 1]) {
  //y olmasa da bu fonksiyon çalışacak.
  print("$x * $y'nin çarpma sonucu = ${x * y}");
}
