class Pencil {
  double graphite;
  String color;
  double _eraser;

  Pencil(this.graphite, this.color, this._eraser);

  double get eraser => _eraser;

  set eraser(double value) {
    if (value >= 0) {
      _eraser = value;
    }
  }

  void sketch() {
    print('The $color pencil is drawing...');
  }

  void erase() {
    if (_eraser > 0) {
      print('The $color pencil is erasing...');
      _eraser -= 0.1;
    } else {
      print('The $color pencil has no eraser left.');
    }
  }

  void displayInfo() {
    print('Color: $color');
    print('Graphite: $graphite');
    print('Eraser remaining: ${_eraser.toStringAsFixed(1)}');
  }
}

void main() {
  Pencil pencil1 = Pencil(2.0, 'Yellow', 1.0);
  Pencil pencil2 = Pencil(1.5, 'Red', 0.5);

  List<Pencil> pencils = [pencil1, pencil2];

  for (Pencil pencil in pencils) {
    pencil.displayInfo();
    pencil.sketch();
    pencil.erase();
    print('\n-------------------\n');
  }

  pencil1.eraser = 0.8;
  print('Updated eraser: ${pencil1.eraser}');
}
