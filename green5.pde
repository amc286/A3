float x;
float y;

float g;
float b;

String text1 = "I stay inside, line my bed\nwith spider plants and succulents,\nchristen it Chapel of the Green Lord";
PFont f;

void setup(){
 size(626,438);
 x = 100;
 y = 100;
 
 g = random(255);
 b = random(g);
 
 background(0);
 noSmooth();
 
  f = createFont("OpenDyslexic", 50);
  textFont(f, 20);
}

void draw(){
 
  x += random(-4, 4);
  y -= random(3);
  
  if(x < 0){
    x = width;
  }
  if(x > width){
    x = 0;
  }
  
  if(y < 0){
    y = height;
  }
  
  g += random(-10, 10);
  g = constrain(g, 0, 255);
  
  b += random(-10, 10);
  b = constrain(b, 0, g);
  
  stroke(0, g, b);
  point(x, y);
  
  fill(255);
  text(text1, 210, 190);
}
 
