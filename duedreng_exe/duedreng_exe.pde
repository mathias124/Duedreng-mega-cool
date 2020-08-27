PImage img;
PImage startup;
int DIAMETER = 80, hastighed = 4;
PFont Titelfont;
PFont Lilletitelfont;
Player[] p;
int Niveau;
int dueAmount =2; 
 
void setup() {
  size(1920, 1080);
 img = loadImage("duedreng.png");
 startup = loadImage("pigeon.png");
 Titelfont =createFont("Arial",84);
 Lilletitelfont = createFont("Arial",34);

  smooth(8);
  frameRate(1000);
  ellipseMode(CENTER);
  p= new Player[100];
 for(int i = 0;i<100;i++)
  p[i] = new Player((int)random(0,1920), (int)random(0,1080), DIAMETER, hastighed);
  Niveau = 0;
}
 
void draw() {
  
  //background(0,255,0);
       background(53,101,77);
   for(int i = 0;i<dueAmount;i++){
   
  p[i].move();
  p[i].display();
  p[i].simulate();
   }
  //text(frameRate,500,500);
}
 
void keyPressed() {
     for(int i = 0;i<dueAmount;i++){
 p[i].setMove(keyCode, true,i);
   }
 
}
 
void keyReleased() {
       for(int i = 0;i<dueAmount;i++){
  p[i].setMove(keyCode, false,i);
   }

}
 
