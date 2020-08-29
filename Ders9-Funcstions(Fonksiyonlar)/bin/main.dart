//Flutter Giriş 1 DART
main() {
//Fonksiyonlar yazılım dilinin fabrikalarıdır. Olmazsa olmazıdır ve kesinlikle öğrenilmesi gerekir.
//simdiye kadarki tüm öğrenilenleri bir fonksiyona koyup sonra onu çağıralım...
/*
  yorumlar();
  degiskenler();
  numbers();
  strings();
  booleans();
  arrays();
  maps();
  runes(); //şeklinde çağırmaları yaptık.
  */
  print("İsim: ${aliYaz()}");
  print("Yaşı: " +
      aliYasi().toString()); //print string çıkardığı için inti string yaptık
  print("Alinin yaşı: ${aliYasi()}");
  print(dogruMu());
}

/*GERİYE
    DEĞER
      DÖNDÜREN
*/
bool dogruMu() {
  return true;
}

String aliYaz() {
  String ali = "Ali";
  return ali; //bu tip fonksiyonlar return eder.
}

int aliYasi() {
  int ali = 21;
  return ali; //bu tip fonksiyonlar int return eder.
}

/*GERİYE
    DEĞER
      DÖNDÜRMEYEN
*/

void geriDondurmez() {
  //return yazmadık ve hata vermedi.
}

Function yorumlar() {
  /*
      YORUMLAR
  */
  // Yorum satırları iki eğik çizginin yan yana konmasıyla oluşturulur.
  /*
  Çoklu yorum satırı, eğik çizgiler ve yıldız sembollerinin
  arasında ifade edilebilir
  */
  print("dart programlama diline giriş"); //print() çıktı almamızı sağlar.
  // Kısmi yorum satırı:
  print(1 + 4 /* +7 */);
  //bu şekilde kullanımımız dışındaki bölümlerde de yorum satırı kullanabiliriz. print'in 20 değil, 11 yazması beklenir.
}

Function degiskenler() {
  /*
      DEĞİŞKENLER/NUMBERS/STRINGS/BOOLEANS
  */
  //Değişmeyen, mesela sadece print'in içinde yazdığımız bir yazıya
  //literals(sabit) deriz. Değiştirebildiklerimizi ise variables(değişkenler) olarak adlandırırız.
  // Değişken tiplerimiz:
  // var/dynamic, const/final olarak 4'e ayrılır.
  // var(variable) ve dynamic, sonrasında değişebilen bir yapıdayken const veya final sonrasında değiştirilemez.
  // var'a örnek olarak yaşınızı, const'a örnek olarak T.C kimlik numaranızı düşünebilirsiniz.
  // Değişken tipi var olarak belirlenen bir string sonrasında sayısal olarak değiştirilemez, program hata verir.
  // Eğer bu şekilde bir tanımlama yapmak istenirse var yerine dynamic kullanılır.
  // Bunlara ek olarak değişken tipimizi spasifik olarak da belirtebilir.
  // Assing(atama) işlemi
  dynamic degisken = "bu çok değişen bir cümle";
  print(degisken);
  degisken = 14;
  print(degisken);
  const sabitdegisken1 = "bu degisken daha sonra değiştirilemez";
  final sabitdegisken2 = "bu degisken de daha sonra değiştirilemez";
}

Function numbers() {
  //number - integer sayilar

  int deste = 10;
  double pi = 3.14;
  print(deste * pi); // 31.4
  var duzine = "12";
  print(deste /
      int.parse(
          duzine)); // 0.83 ----------> burada düzine string olduğu için onu int.parse() ile integer'a çevirerek işlemimizi yapıyoruz.
  var pisayisi = "3.14";
  print(deste *
      double.parse(
          pisayisi)); // 31.4 -----> pi double tanımlanmış; ama pisayısı yine string. O yüzden burada da parse işlemimizi gerçekleştiriyoruz.

  //programlamada ilerledikçe var gibi tanımlamalar kullanılmamaya başlar
  //onun yerine int,double,string gibi spasifik kullanımlardan faydalanılır.
}

Function strings() {
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

Function booleans() {
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

Function arrays() {
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

Function maps() {
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

Function runes() {
  //pek kullanılmıyor olsa da bilmekte fayda var.
  Runes ifadeler = new Runes("\u2665 \u{1f605} \u{1f596}");
  print(new String.fromCharCodes(
      ifadeler)); //emojiler'i Char Code'larına göre gösterir
  //new koysak da olur koymasak da.
}
