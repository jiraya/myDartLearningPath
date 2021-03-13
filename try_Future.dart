import 'dart:async';

main() async {
  print("mulai");
  print(await berhitung(5, 5));
  print("selesai");
}

Future<int> berhitung(int a, int b) async {
  return a + b;
}

// main() {
//   print("mulai");
//   berhitung();
//   print("selesai");
// }

// berhitung() {
//   print(1);
//   print(2);
//   print(3);
// }
