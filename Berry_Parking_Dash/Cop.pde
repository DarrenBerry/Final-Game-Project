class Cop {
  /*
  Class variables
   */
  int x;
  int y;
  int d;
  int c1Top;
  int c1Bottom;
  int c1Right;
  int c1Left;
  int c2Top;
  int c2Bottom;
  int c2Right;
  int c2Left;
  boolean isState1=true;
  int c1;
  int c2;

  int xSpeed;
  int ySpeed;
  int startTime;
  int endTime;
  int interval;

  /*
  Constructor
   */

  Cop() {
    int speedMag = 5;


    xSpeed = int(random(-speedMag, speedMag));
    ySpeed = int(random(-speedMag, speedMag));

    if (xSpeed == 0) {
      xSpeed = speedMag;
    }
    if (ySpeed == 0) {
      ySpeed = speedMag;
    }



    x=5;

    y=5;
    d = int(random(20, 100));
    c1= color(255, 0, 0);
    c2= color(0, 0, 255);
    interval = 60;
    c1Top=y-d/2;
    c1Bottom=y+d/2;
    c1Right=x+d/2;
    c1Left=x-d/2;
    c2Top=y-d/2;
    c2Bottom=y+d/2;
    c2Right=x+d/2;
    c2Left=x+d/2;
  }

  void render() {

    copsAnimation.display(x, y);
    copsAnimation.isAnimating=true;
  }

  /*
This function takes updates the position the ball according to its speed.
   */
  void move() {

    y += ySpeed;
    x+=xSpeed;
  }

  /*
This function checks if the ball is touching an edge. If it is, the speed flips
   */
  void wallDetect() {

    // detects wall detection for the right wall
    if (x+d/2 >= width) {
      xSpeed = -abs(xSpeed);
    }
    // wall detection for left wall
    if (x-d/2 <= 0) {
      xSpeed = abs(xSpeed);
    }

    // wall detection for the bottom wall
    if (y+d/2 >= height) {
      ySpeed = -abs(ySpeed);
    }
    // wall detection for left wall
    if (y-d/2 <= 0) {
      ySpeed = abs(ySpeed);
      //y=height;
    }
  }
  void updateCopBounds() {
    c1Top=y;
    c1Bottom=y+d;
    c1Right=x+d;
    c1Left=x;
  }

  void playerDetect(Player thePlayer) {
    if (c1Top<thePlayer.pBottom) {
      if (c1Bottom>thePlayer.pTop) {
        if (c1Left<thePlayer.pRight) {
          if (c1Right>thePlayer.pLeft) { 
            //if(thePlayer.p1Score){
            //  xSpeed=+1;
              //ySpeed=+1;
            
            println("Player");
            state+=1;
          }
        }
      }
    }
  }

void playerScore(Player thePlayer){
  

}
  }
