class OddballParticle extends Particle {
  
  float spriteScale = 0.05;
  
  OddballParticle() {
    super();
  }
  
  OddballParticle(float _x, float _y) {
    super();
    x = _x;
    y = _y;
  }
  
  void show() {
    image(shipSprite, x, y, shipSprite.width * spriteScale, shipSprite.height * spriteScale);
  }
  
  void tick() {
    x += lerp(2, -2, (float)Math.random());
    y += lerp(2, -2, (float)Math.random());
  }
}
