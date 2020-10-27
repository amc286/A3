PImage magician;
ParticleSystem ps;
int counter;
PFont f;
String message = "I’m not sure if her belly \nshrinks because she takes everything out, or \nbecause she lets nothing in, but I’m grateful for her \ndedication.";

void setup() {
  size(626, 438);
  ps = new ParticleSystem(new PVector(width/2, 219));
  magician = loadImage("magician.png");
  f = createFont("OpenDyslexic", 15, true);
  textFont(f, 15);
}

void draw() {
  background(255);
  ps.addParticle();
  ps.run();
  imageMode(CENTER);
  image(magician, 310, 319);
  fill(0);
  textAlign(CENTER);
  typewriteText();
}
 
void typewriteText(){
  if (counter < message.length())
    counter++;
  text(message.substring(0, counter), 10, 10, width, height);
}


class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(PVector position) {
    origin = position.copy();
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    particles.add(new Particle(origin));
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}


class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    position = l.copy();
    lifespan = 255.0;
  }

  void run() {
    update();
    display();
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0;
  }

  void display() {
    stroke(255, lifespan);
    fill(random(0, 255), lifespan);
    ellipse(position.x, position.y, 8, 8);
  }

  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
