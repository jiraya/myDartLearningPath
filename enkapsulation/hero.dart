import 'dart:core';

class Hero {
  String name;
  int _hp = 0, _strength = 0;
  Hero(this.name) {
    print('Hero bernama ${this.name} telah berhasil dibuat');
  }

  // membuat setter dengan method biasa
  void setHp(int hp) {
    this._hp = hp;
  }

  // membuat getter dengan method biasa
  int getHp() {
    return this._hp;
  }

  // membuat setter dengan properti
  void set strength(int val) {
    this._strength = val;
  }

  // membuat getter dengan properti
  int get strength {
    return this._strength;
  }
}
