float my_num = 0;
PFont f;
String message1 = "If this world\nis a plucked violin string, am I part\nof its sound or its stillness?     ";
PImage fhr; 
 
void setup() {
  size(626, 438);
  f = createFont("OpenDyslexic",20,true);
  fhr = loadImage("fhr.png");
}
 
void draw() {
  background(64, 29, 1);
  stroke(255);
  textFont(f);
  text(message1, 10, 170);
  
  imageMode(CENTER);
  image(fhr, 450, 219);
 
  float x = noise(my_num) * width;
  line(x, 0, x, height);
  
  my_num = my_num + 0.03;
}
 
