class Player {
  // Class Variables
  int x;
  int y;
  int speed;
  int sideLength;
  int pTop;
  int pBottom;
  int pRight;
  int pLeft;
  int p1Score;
  // Constructor
  Player() {
    x=100;
    y=200;
    speed = 5;
    sideLength=50;
    pTop=y;
    pBottom=y+sideLength;
    pRight=x+sideLength;
    pLeft=x;
  }
  void render () {
    playerAnimation.display(x, y);
    playerAnimation.isAnimating=true;
    text(p1Score, 40, 360);
    textSize(50);
  }
  void move() {

    if (keyPressed == true) {

      if (key == CODED) {
        if (keyCode == LEFT) {
          if (x>0) {
            if ( !walkSound.isPlaying()) {
              walkSound.play();
            }
            x = x - speed;
          }
        } else if (keyCode == UP) {
          if (y>0) {
            y = y - speed;
          }
          if ( !walkSound.isPlaying()) {
            walkSound.play();
          }
        } else if (keyCode == DOWN) {
          if (y + sideLength<height) {
            y = y + speed;
          }
          if ( !walkSound.isPlaying()) {
            walkSound.play();
          }
        } else if (keyCode == RIGHT) {
          if (x + sideLength<width) {
            x = x + speed;
          }
          if ( !walkSound.isPlaying()) {
            walkSound.play();
          }
        }
      }
    }
  }

  void copDetect(Cop theCop) {
    if (pTop<theCop.c1Bottom) {
      if (pBottom>theCop.c1Top) {
        if (pLeft<theCop.c1Right) {
          if (pRight>theCop.c1Left) {
            println("cop");
          }
        }
      }
    }
  }
  void carDetect(Acar theCar) {
    if (pTop<theCar.carBottom) {
      if (pBottom>theCar.carTop) {
        if (pLeft<theCar.carRight) {
          if (pRight>theCar.carLeft) {

            println("Car");
            p1Score=p1Score+1;
          }
        }
      }
    }
  }
  void carDetect(Acar2 theCar2) {
    if (pTop<theCar2.carBottom) {
      if (pBottom>theCar2.carTop) {
        if (pLeft<theCar2.carRight) {
          if (pRight>theCar2.carLeft) {

            println("Car2");
            p1Score=p1Score+1;
          }
        }
      }
    }
  }
  void carDetect(Acar3 theCar3) {
    if (pTop<theCar3.carBottom) {
      if (pBottom>theCar3.carTop) {
        if (pLeft<theCar3.carRight) {
          if (pRight>theCar3.carLeft) {

            println("Car3");
            p1Score=p1Score+1;
          }
        }
      }
    }
  }
  void carDetect(Acar4 theCar4) {
    if (pTop<theCar4.carBottom) {
      if (pBottom>theCar4.carTop) {
        if (pLeft<theCar4.carRight) {
          if (pRight>theCar4.carLeft) {

            println("Car4");
            p1Score=p1Score+1;
          }
        }
      }
    }
  }

  void updatePlayerBounds() {
    pTop=y;
    pBottom=y+sideLength;
    pRight=x+sideLength;
    pLeft=x;
  }
}
