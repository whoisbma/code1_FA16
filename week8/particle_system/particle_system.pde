ArrayList<ParticleSystem> systems = new ArrayList<ParticleSystem>();

void setup() {
  size(1200, 800);
}

void draw() {
  background(255);
  
  for (int i = 0; i < systems.size(); i++) {
    ParticleSystem t = systems.get(i);
    t.update();
  }
} 

void mousePressed() {
  systems.add(new ParticleSystem(mouseX,mouseY));
}