import 'dart:io';
import 'dart:core';

void main() {
  seputar_list();
  seputar_set();
}

void seputar_list() {
  // deklarasi list dengan type data
  List<int> list = [1, 2, 3];

  // deklarasi list dengan variable assignment
  var list2 = [4, 5, 6];

  // deklarasi list dengan instantiating
  var list3 = new List.filled(
      /*panjang list*/ 4,
      /*isi list (boleh kosong)*/ 1);

  // outputing list dengan for tradisional
  for (int i = 0; i < list.length; i++) {
    print(list[i].toString());
  }
  print('');

  // menampilkan isi list menggunakan for i
  for (int i in list) {
    print(i);
  }
  print('');

  // menampilkan isi list menggunakan foreach
  list.forEach((bil) => print(bil));
  print('');

  // mengganti isi list3 dengan for loop
  for (var i = 0; i < list3.length; i++) {
    list3[i] = i + 1;
  }
  print(list3);

  // METHOD METHOD YG DIGUNAKAN PADA LIST

  // untuk menambah data list dengan nilai yg ditentukan
  list2.add(0);
  print('${list2} \n');

  // menambah isi list dengan kumpulan data
  var dummy = [12, 13, 14];
  list2.addAll(dummy);
  print('${list2} \n');

  // menempatkan / menambah variable pada index yg telah ditentukan
  list2.insert(2, 6);
  print('${list2} \n');

  // menempatkan / menambah variable pada index yg telah ditentukan dengan list
  list2.insertAll(4, [7, 8]);
  print('${list2} \n');

  list2.add(-2);

  list2.remove(1);
  print('${list2} \n');

  list2.removeWhere((bil) => bil < 0);
  print('${list2} \n');

  list2.removeRange(0, 3);
  print('${list2} \n');

  list2.removeAt(2);

  list2.removeLast();
  print('${list2} \n');

  // membuat sublist dari list yg sudah ada
  var sublist = list2.sublist(2, 4);
  print('${sublist} \n');
  sublist = list2.sublist(3);
  print('${sublist} \n');

  // method clear list
  list.clear();
  print('${list} \n');

  // method sort array
  list2.sort();
  print('${list2} \n');

  // CTT: posisi a ke b semakin bertambah
  list2.sort((a, b) => b.compareTo(a));
  print('${list2} \n');

  list2.removeWhere((bil) => bil % 2 == 1);

  // check isi dari list
  if (list2.every((bil) => bil % 2 == 0)) {
    print('semua bilangan genap ${list2}\n');
  } else if (list2.every((bil) => bil % 2 != 0)) {
    print('semua bilangan ganjil ${list2}\n');
  } else {
    print('list terdiri dari bilangan ganjil dan genap ${list2}\n');
  }

  // check bila list kosong dan tidak
  if (list2.isEmpty) {
    print('list kosong');
  } else if (list2.isNotEmpty) {
    print('list tidak kosong');
  }
  print('\n');

  // map method untuk merubah setiap bagian atau value dari list
  var map1 = list2.map((bil) => "angka " + bil.toString()).toList();
  map1.forEach((kata) => print(kata));
  print('\n');
}

// set merupakan list yang semua value atau isinya harus unique
void seputar_set() {
  var dummy = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5];
  // value list yang sama akan dihilangkan dengan method toSet()
  var set1 = dummy.toSet();
  print('${set1} \n');
}
