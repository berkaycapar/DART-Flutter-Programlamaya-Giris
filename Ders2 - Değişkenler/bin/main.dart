//Flutter Giriş 1 DART -Yorum Satırları Değişkenler, Numbers, Strings, Booleans, Diziler-Listeler, Haritalar

/*
Kodlamalara başlamadan önce gerekli kurulumları yapmış olmanız gerekmektedir.
Kurulumun anlatıldığı yazıma şuradan ulaşabilirsiniz: LİNK.
*/

//dart programlama dili main() fonksiyonu içerisinde çalıştırılır.
//dart programlama dilinde kodların sonuna noktalı virgül konmalıdır(;)
main() {
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
