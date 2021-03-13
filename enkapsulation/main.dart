import 'dart:core';
import 'hero.dart';

void main() {
  Hero gusion = Hero('Gusion');

  // memanggil setter _hp (method biasa)
  gusion.setHp(1000);

  // memanggil setter _strength (properti)
  gusion.strength = 3000;

  // memanggil getter _hp (method biasa)
  print('Hp : ${gusion.getHp()}');

  // memanggil getter _strength (properti)
  print('Strength : ${gusion.strength}');
}
