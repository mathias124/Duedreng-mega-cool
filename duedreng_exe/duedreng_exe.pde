PImage img;
PImage startup;
int DIAMETER = 80, hastighed = 4;
PFont Titelfont;
PFont Lilletitelfont;
Player p;
int Niveau;
 
void setup() {
  size(1920, 1080);
 img = loadImage("duedreng.png");
 startup = loadImage("pigeon.png");
 Titelfont =createFont("Arial",84);
 Lilletitelfont = createFont("Arial",34);

  smooth(8);
  frameRate(90);
  ellipseMode(CENTER);
  p = new Player(width, height, DIAMETER, hastighed);
  Niveau = 0;
}
 
void draw() {
  
  //background(0,255,0);
  p.move();
  p.display();
  p.simulate();
}
 
void keyPressed() {
  p.setMove(keyCode, true);
}
 
void keyReleased() {
  p.setMove(keyCode, false);
}
 
