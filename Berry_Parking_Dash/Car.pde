class Acar {
  // Class Variables
  int x;
  int y;
  int size;
  int carTop;
  int carBottom;
  int carRight;
  int carLeft;
  int randNumber;
  // Constructor
  Acar() {
    //y=0;
    int randNumber = int(random(1, 4));

    if (randNumber == 1) {
      x = 170;
      y = 250;
    }

    if (randNumber == 2) {
      x =520;
      y =170;
    }

    if (randNumber == 3) {
      x = 455;
      y =250;
    }

    if (randNumber == 4) {
      x = 455;
      y = 520;
    }




    size=50;
    carTop=y;
    carBottom=y+size;
    carRight=x+size;
    carLeft=x;
  }

  void render() {

    image(carImage, x, y);
  }
  void updateCarBounds() {
    carTop=y;
    carBottom=y+size;
    carRight=x+size;
    carLeft=x;
  }
}
