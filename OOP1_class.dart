import 'dart:io';
import 'dart:core';

void main() {
  Balok balok1 = Balok(5, 5, 5);
  print(balok1.volume());
  print(balok1.luas_permukaan());
  print(balok1);

  Hero dellons = Hero("Dellons", 2000, 2000);
  print(dellons.getStats());
  print('\n');

  Hero rudy = Hero("Rudy", 3000, 1000);
  print(rudy.getStats());
  print('\n');

  dellons.attack(rudy);
  print(rudy.getStats());
  print('\n');
  dellons.attack(rudy);
  print(dellons.getStats());
  dellons.attack(rudy);
}

class Balok {
  // ATTRIBUTE
  int panjang, lebar, tinggi;

  // CONSTRUCTOR
  // (untuk menginisialisasi isi attribute balok)
  Balok(this.panjang, this.lebar, this.tinggi) {
    print('object berhasil dibuat');
  }

  // METHOD di class
  int volume() => (this.panjang * this.lebar * this.tinggi);

  int luas_permukaan() {
    return this.panjang * this.lebar;
  }
}

class Hero {
  String name;
  int hp, strength;
  int level = 1, exp = 0;
  bool is_alive = true;

  Hero(this.name, this.hp, this.strength) {
    print('Hero bernama $this.name telah terlahir');
  }

  String getStats() =>
      "${this.name} \nHP : ${this.hp} \nStrength : ${this.strength}\nLevel : ${this.level}\nExp : ${this.exp}";

  void level_up() {
    if (this.exp >= (100 * level)) {
      this.level++;
      print("${this.name} berhasil naik level ke level ${this.level}");
      this.hp *= this.level;
      this.strength *= this.level;
    }
  }

  void attack(var musuh) {
    if (musuh.is_alive && this.is_alive) {
      musuh.hp -= this.strength;
      if (musuh.hp <= 0) {
        musuh.is_alive = false;
        this.exp += 100;
        this.level_up();
        print("${musuh.name} telah mati");
      }
    } else {
      print('tidak bisa menyerang musuh');
    }
  }
}
