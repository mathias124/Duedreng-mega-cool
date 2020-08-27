 class Player {
 
  boolean isLeft, isRight, isUp, isDown;
  int x, y;
  int d, v;
 
  Player( int xx, int yy, int dd, int vv) {
    x = xx;
    y = yy;
    d = dd;
    v = vv;
  }
 
 void simulate() {
 if(Niveau==0) {
 image(startup,0,0);
  startup.resize(1920,1080);
  fill(220,20,60);
  textAlign(CENTER);
  textFont(Titelfont);
  text("Velkommen tilbage Agent Duedreng!", 960, 85);
  fill(0);
  textFont(Lilletitelfont);
  text("Tryk på hvilken som helst tast for at starte spillet",960,880);
  if(keyPressed == true) {
    Niveau =1;
 }
 }
 }
  void display() {
    //ellipse(x, y, d, d);
    if(Niveau==1){
      background(53,101,77);
    image(img,x-40,y-40,d,d); 
  }
  }
 
  void move() {
     int r = d >> 1;
    x = constrain(x + v*(int(isRight) - int(isLeft)), r, width  - r);//siden
    y = constrain(y + v*(int(isDown)  - int(isUp)),   r, height - r);//op,ned
  }
  boolean setMove(int k, boolean b) {
    switch (k) {
    case +'W':
    case UP:
      return isUp = b;
 
    case +'S':
    case DOWN:
      return isDown = b;
 
    case +'A':
    case LEFT:
      return isLeft = b;
 
    case +'D':
    case RIGHT:
      return isRight = b;
 
    default:
      return b;
    }
  }
}
