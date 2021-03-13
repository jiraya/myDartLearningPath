// import dependency library
import 'dart:io' show stdin, stdout;
import 'dart:core';

void main() {
  print('hello world');

  stdout.write('input : ');

  // membuat inputan
  String a = stdin.readLineSync()!;

  // deklarasi variable
  int b;

  // try catch (mencoba parse variable b menjadi bentuk int)
  try {
    b = int.tryParse(a)!;

    // PERCABANGAN TRADISIONAL DART
    if (b % 2 == 0) {
      print('percabangan tradisional : genap');
    } else if (b % 2 == 1) {
      print('percabangan tradisional : ganjil');
    }

    // percabangan singkat (hanya untuk menentukan nilai variable)
    String message1 = "percabangan singkat : genap";
    String message2 = "percabangan singkat : genap";
    String output = (b % 2 == 0 ? message1 : message2);

    print(output);

    // SWITCH CASE DART
    switch (b) {
      case 1:
        print('b bernilai satu');
        break;
      case 2:
        print('b bernilai dua');
        break;
      default:
        print('nilai b adalah $b');
    }

    // kondisi yg dikeluarkan jika b bukanlah int
  } catch (e) {
    print('b bukan termasuk int');
    b = 0;
  }
}
