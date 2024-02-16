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
    float _width = shipSprite.width * spriteScale;
    float _height = shipSprite.height * spriteScale;
    image(shipSprite, x - (_width * 0.5), y - (_height * 0.5), _width, _height);
  }
  
  void tick() {
    x += lerp(2, -2, (float)Math.random());
    y += lerp(2, -2, (float)Math.random());
  }
}
