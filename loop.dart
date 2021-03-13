import 'dart:io';

void main() {
  stdout.write('masukkan tinggi segitiga : ');
  int tinggi = int.tryParse(stdin.readLineSync()!)!;

  print('\nfor loop');
  nested_for_loop(tinggi);
  print('\nwhile loop');
  nested_while_loop(tinggi);
}

// nested for loop dart (segitiga *)
void nested_for_loop(int tinggi) {
  for (int i = 1; i <= tinggi; i++) {
    for (int k = 1; k <= i; k++) {
      stdout.write('*');
    }
    print(' $i');
  }
}

// nested while loop dart (segitiga *)
void nested_while_loop(int tinggi) {
  int i = 1;
  while (i <= tinggi) {
    int k = 1;
    while (k <= i) {
      stdout.write('*');
      k++;
    }
    print(' $i');
    i++;
  }
}
