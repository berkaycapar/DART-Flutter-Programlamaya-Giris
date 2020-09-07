//Flutter Giriş 1 DART

main() {
  //anonim fonksiyonlar
  //print-yazdır fonksiyonu bir anonim fonksiyondur
  //kendimiz print adında başka bir fonksiyon oluşturursak hatalarla karşılaşırız.
  //diğer örnekler: parse, toString, forEach, indexOf...

  List<String> arr = const ["ahmet", "mehmet", "veli"];
  //iki türlü listedeki elemanları yazdıralım
  //hem görmüş olalım.
  arr.forEach((element) {
    print("X1" + element);
  });
  arr.forEach((element) => print(
      "X2 " + element)); //for each içinde bir tane kısa fonksiyon oluşturduk.
/*
  //DESTEKLEMESE DE TEORİK OLARAK TANIMLAMAK MÜMKÜN
  print(() => "isimsiz ve değer almayan kısa fonksiyon");
  String ornek = "DART";
  print((ornek) => print("isimsiz ve değer alan kısa fonksiyon"));
  //forEach destekliyor çünkü önceki(ardılından burada arr listesi)nden aldığı değer var ve bunu içinde printiyor. FOR döngüsü gibi.
*/
  ustFonksiyon(); // [ ] içine aldığımız için (default yaptık) boş gönderebiliriz.
}

//      iç içe Fonksiyon Tanımlama ve Kapsam Alanları

void ustFonksiyon([String ilk_deger]) {
  //Function ve void beraber kullanılmaz biri olacak.
  int yas = 23;
  //print(isim) YAPAMAM
  Function ikinciFonksiyon(String ikinci_deger) {
    //bu fonksiyonun içinden üst fonksiyonun içindeki degere(örn:sayi) ulaşılabiliyorken
    //ustFonksiyon içinden isim alınamaz. ÖNEMLİ.
    String isim = "Berkay";
    print("$isim, $yas'ındadır."); //görüldüğü gibi, yaşı alabildik.
  }

  //fonksiyon içinde fonksiyon çağırırken fonksiyonu tanımladıktan sonra çağırabiliriz. YANİ ustFonksiyon'un ALTINDA çağıralım.
  ikinciFonksiyon("ikinci_deger");
}
