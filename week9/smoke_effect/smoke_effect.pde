ArrayList<Particle> smoke = new ArrayList<Particle>();
int spawnRate = 3;

void setup() {
  size(800,800);
  noStroke();
}

void draw() {
  background(255);
  
  spawnRate = (int)random(1,5);

  if (frameCount % spawnRate == 0) {
    Particle p = new Particle(width/2, height/2);
    smoke.add(p);
  }

  for (int i = smoke.size()-1; i >= 0; i--) {
    Particle temp = smoke.get(i);
    temp.update();
    temp.display();
    
    if (temp.lifetime < 0) {
      smoke.remove(i);
    }
  }
  
}