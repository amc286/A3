int yPos=0;
PImage sword;
PImage sword1;
PFont f;
int counter;
String message1 = "swords, of course, each one longer than the one before.";


void setup() {
  size (626,438);
  smooth();
  background(255);
  noStroke();
  fill(100);
  f = createFont("OpenDyslexic",30,true);
  textFont(f, 20);
  sword = loadImage("sword.png");
  sword1 = loadImage("sword1.png");
}

  
void draw() {
  background(255);
  image(sword, 100, yPos);
  yPos=yPos+2;
  image(sword1, 200, yPos);
  
  typewriteText();

}
 
void typewriteText(){
  if (counter < message1.length())
    counter++;
  text(message1.substring(0, counter), 10, 40, width, height);
}
