// backround Image
PImage bg;
int y;
// Make cops animation object
Animation copsAnimation;
// make player animation object
Animation playerAnimation;

//1 Make array of copsImages
PImage [] copsImages=new PImage[4];
// make array of playerImages
PImage [] playerImages=new PImage[4];
// make array of playerImages
PImage carImage;
PImage  car2Images;
PImage car3Images;
PImage  car4Images;
int state=0;


Cop theCop;
Acar theCar;
Acar2 theCar2;
Acar3 theCar3;
Acar4 theCar4;
Player thePlayer;
// declare my img var
// PImage buckImg;







// sound
import processing.sound.*;
SoundFile walkSound;
SoundFile streetSound;



//declare my arraylist Var
ArrayList<Cop>copList;
ArrayList<Player>playerList;
ArrayList<Acar>carList;
ArrayList<Acar2>carList2;
ArrayList<Acar3>carList3;
ArrayList<Acar4>carList4;

void setup() {
  thePlayer= new Player();
  thePlayer.p1Score=0;
  theCop=new Cop();
  theCar= new Acar();
  theCar2= new Acar2();
  theCar3= new Acar3();
  theCar4= new Acar4();
  walkSound=new SoundFile(this, "walk.mp3");
  streetSound=new SoundFile(this, "street.mp3");
  streetSound.play();
  carImage = loadImage("Car0.png");
  car2Images = loadImage("Car1.png");
  car3Images = loadImage("Car2.png");
  car4Images = loadImage("Car3.png");
  // initialize my image var
  //  buckImg=loadimage("alienDeer.jpg");
  // resize image
  carImage.resize(200, 300);
  car2Images.resize(200, 300);
  car3Images.resize(200, 300);
  car4Images.resize(200, 300);
  size(800, 600);
  //initialize my Arraylist Var
  copList=new ArrayList<Cop>();
  playerList=new ArrayList<Player>();
  carList=new ArrayList<Acar>();
  copList.add(new Cop());
  playerList.add(new Player());
  carList.add(new Acar());
  // fill array of cop images
  for (int i=0; i<copsImages.length; i++) {
    copsImages[i]=loadImage("cops"+i+".png");
  }
  for (int i=0; i<playerImages.length; i++) {
    playerImages[i]=loadImage("player"+i+".png");
  }




  //initialize player object
  playerAnimation=new Animation(playerImages, 0.2, 5);


  //initialize cops object
  copsAnimation=new Animation(copsImages, 0.2, 5);



  ////initialize cars object
  bg = loadImage("Background.png");
}


void draw(){
  switch(state){
    case 0:
    background(0, 0, 0);
    text("Press R To Play!", height/2, width/2);
    textSize(50);
    break;
    case 1:
  background(bg);
  theCop.render();
  theCop.move();
  theCop.wallDetect();
  theCop.playerDetect(thePlayer);
  theCar.render();
  theCop.playerScore(thePlayer);
  theCar2.render();
  theCar3.render();
  theCar4.render();
  thePlayer.render();
  thePlayer.move();
  thePlayer.carDetect(theCar);
  thePlayer.carDetect(theCar2);
  thePlayer.carDetect(theCar3);
  thePlayer.carDetect(theCar4);
  thePlayer.copDetect(theCop);
  thePlayer.updatePlayerBounds();
  theCop.updateCopBounds();
  theCar.updateCarBounds();
  break;
   case 2:
    streetSound.stop();
        background(0, 0, 0);
        text("Your Going To Jail! Press L to Restart", 70, 350);
        textSize(50);
        break;
}
}







void keyPressed() {
  if (key=='r') {
    state=1;
   setup();
  }
  if (key=='l') {
    state=0;
  }







}



//}

//}
void keyReleased () {

  if (key == CODED) {
    if (keyCode == LEFT) {
      walkSound.stop();
    }
    if (keyCode == UP) {
      walkSound.stop();
    }
    if (keyCode == DOWN) {
      walkSound.stop();
    }
    if (keyCode == RIGHT) {
      walkSound.stop();
    }
  }
}
void mousePressed() {
  copsAnimation.isAnimating=true;
  playerAnimation.isAnimating=true;
}
