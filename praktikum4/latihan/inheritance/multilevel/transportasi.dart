class Transportasi {
  int? _speed;
  String? _color;

  void turnLeft() {
    print("Belok kiri");
  }

  void turnRight() {
    print("Belok kanan");
  }

  void setSpeed(int speed) {
    _speed = speed;
  }

  int getSpeed() {
    return this._speed!;
  }

  void setColor(String color) {
    _color = color;
  }

  String getColor() {
    return this._color!;
  }
}
