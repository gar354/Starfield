ArrayList<Particle> particles;

void setup() {
  particles = new ArrayList<Particle>();
  particles.add(new OddballParticle());
	size(600, 600);
}
void draw() {
	background(0);

  particles.add(new Particle());
  for (int i = particles.size() - 1; i >= 0; i--) {
    Particle particle = particles.get(i);
    if (particle.isOutside()) {
      particles.remove(i);
      continue;
    }
    particle.tick();
    particle.show();
  }
}

void mousePressed() {
  particles.add(new OddballParticle(mouseX, mouseY));
}

color getRandomColor() {
  float currentR = lerp(0.0, 255.0, (float)Math.random());
  float currentG = lerp(0.0, 255.0, (float)Math.random());
  float currentB = lerp(0.0, 255.0, (float)Math.random());
  return color(currentR, currentG, currentB);
}
