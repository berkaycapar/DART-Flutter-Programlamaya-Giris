//Flutter Giriş 1 DART -Yorum Satırları Değişkenler, Numbers, Strings, Booleans, Diziler-Listeler, Haritalar
main() {
  //  Arrays - Lists - Diziler - Listeler
  // sıralı değerler için kullanılır. Örneğin bir sınıftaki öğrencilerin tümünün isimleri

  var sinifListesi = [
    "ali",
    "ahmet",
    "mehmet",
    0,
    1,
    true
  ]; //bu şekilde farklı türden veriler kullanılabilir. Biz burada hem string hem integger hem boolean kullandık.
  //fakat bu kullanım yanlıştır ve zaten genellikle(%98) yapılmaz.
  List sinif2 = ["ahmet", "veli"]; //bu daha doğrudur
  //fakat en doğrusu listenin türünü belirtmektir.
  List<int> notlar = [100, 90, 96, 84]; //sadece sayılar
  List<String> sinif3 = ["ayşe", "fatma"]; //sadece stringler
  //objelerden, nesnelerden de listeler oluşturulabilir. Yani öğrencinin tüm özellikleriyle öğrenciyi kaydedebiliriz.

  //ikinci nota erişmek istersek:
  print(notlar[
      1]); //Diziler 0'dan başladığı için 1 diye gösterdiğimiz aslında 2. sıradaki eleman

  print(sinif3[1]); //çıktı fatma
  //3. sınıftaki fatma'yı zeynep'le değiştirelim
  sinif3[1] = "zeynep";
  print(sinif3[1]); //çıktı zeynep

  //boş bir liste tanımlayalım ve içerisine sonradan ekleme yapalım.
  List<int> yaslar = [
    0,
    0
  ]; //bellekte bir yer ayrıldı ve sonra doldurma yapılacak (yer ayrılacak kadar index rastgele sayılarla belirlenebilir 0 ya da başka rakam fark etmez)
  //şimdi dolduralım
  yaslar[0] = 23;
  yaslar[1] = 22;
  print(yaslar[1]);
  //ya da içi boş olsun
  List<int> puanlar = [];
  List<int> puanlar2 =
      new List(); // bu şekilde tanımlamak aslında en doğrusudur.
  puanlar.add(7);
  puanlar.add(9);
  print("Yarışmacıların puanları $puanlar");
  print("2. yarışmacının puanı " +
      puanlar[1]
          .toString()); //printte string yazdırıldığı için .toString() kullandık.
  //listenin değiştirilmesini istemiyorsak
  List<int> kimlikNo = const [42511223355];
  //bu kimlik numarası sonradan değiştirilemez.
  //kimlikNo.add(42511223344); //EKLENEMEZ DE.

  //listedeki tüm elemanları gösterme
  var list = ['apples', 'bananas', 'oranges'];
  print("Listedeki elemanlar");
  list.forEach((item) {
    //forEach() metodu listedeki tüm elemanlara döner ve onları içinde belirtildiği gibi -burada item olarak belirtilmiş- yazar
    print(
        '${list.indexOf(item) + 1}: $item'); //.indexOf(item) listenin içindeki ----item---- 'i arıyor ve onun olduğu indexi yazdırıyor. +1 diyerek 0'ı gözardı edebiliriz.
  });
}
