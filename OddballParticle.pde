class OddballParticle extends Particle {
  
  OddballParticle() {
    super();
  }
  
  void show() {
    fill(255);
    square(x,y, len * 2);
  }
  
  void tick() {
    x += lerp(2, -2, (float)Math.random());
    y += lerp(2, -2, (float)Math.random());
  }
}
