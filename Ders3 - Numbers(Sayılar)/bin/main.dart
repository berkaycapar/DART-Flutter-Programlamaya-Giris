//Flutter Giriş 1 DART

//Numbers(Sayılar)
main() {
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
