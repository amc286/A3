String message1 = "For a moment, the magician’s parted lips reveal only \ndarkness";
PImage mouth;
PFont f;
int counter;

int zoom = 30;
final static byte inc = 2;

void setup() {
  size(626, 438);
  smooth();
  imageMode(CENTER);
  mouth = loadImage("mouth.png");
  f = createFont("OpenDyslexic",30,true);
  textFont(f, 18);
}

void draw() {
  background(0);

  if (mousePressed)
    if      (mouseButton == LEFT)   zoom += inc;
    else if (mouseButton == RIGHT)  zoom -= inc;

  image(mouth, 313, 219, zoom, zoom);
    typewriteText();

}
 
void typewriteText(){
  if (counter < message1.length())
    counter++;
  text(message1.substring(0, counter), 50, 50, width, height);
}
