import 'dart:core';

main() {
  print(talk('rian', 'hai', via: 'telegram'));
  print(talk2('rian', 'hai', 'adit', 'telegram'));
  print(talk3('rian', 'hai'));
  print('');

  print("hasil function biasa : ${add(1, 2)}");
  // memasukan function ke variable
  Function func = add;
  print("hasil function yg sudah di assign pada variable : ${func(1, 2)}");
  print('');

  // memanggil anonymous function
  print("Hasil dari anonymous function : ${do_hitung(5, 5, (a, b) => a * b)}");
  print("Hasil dari anonymous function : " +
      do_hitung(2, 5, (a, b) {
        return a + b;
      }).toString());
}

// Optional parameter function

// harus memakai nama parameter waktu memanggil
String talk(String name, String word, {String? to, String? via}) {
  return "$name say $word" +
      ((to != null) ? " to " + to : "") +
      ((via != null) ? " via " + via : "");
}

// tidak perlu menggunakan nama parameter waktu memamnggil
String talk2(String name, String word, [String? to, String? via]) {
  // CTT : "String?" fungsinya adalah agar variable bisa di set dengan null (ketika parameter tidak diberi nilai)
  return "$name say $word" +
      ((to != null) ? " to " + to : "") +
      ((via != null) ? " via " + via : "");
}

// Optional parameter function dengan default value parameter
String talk3(String name, String word,
    [String? to = "zuck", String? via = "whatsapp"]) {
  return "$name say $word" +
      ((to != null) ? " to " + to : "") +
      ((via != null) ? " via " + via : "");
}

// Arrow expression function | dibawah ini adalah returnnya
int add(int num1, int num2) => num1 + num2;

// Anonymous function
int do_hitung(int num1, int num2, Function hitung) {
  return hitung(num1, num2);
}
