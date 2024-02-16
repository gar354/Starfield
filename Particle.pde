class Particle {
  float len;
  float x;
  float y;
  float angle;
  float speed;
  color particleColor;
  
  Particle() {
    x = width * 0.5;
    y = height * 0.5;
    particleColor = getRandomColor();
    len = 5.0;
    speed = Math.max((float)Math.random(), 0.3) * 5;
    angle = (float)(Math.random() * 2 * PI);
  }
  
  void show() {
    float _dist = dist(x,y, height * 0.5, height * 0.5);
    float mappedDist = map(_dist, 0, width, 30, 255);
    float sizeMappedDist = map(_dist, 0, width, 1, 4) * 2;
    fill(particleColor, mappedDist);
    ellipse(x, y, len * sizeMappedDist, len * sizeMappedDist);
  }
  
  void tick() {
    x += Math.cos(angle) * speed;
    y += Math.sin(angle) * speed;
  }
  
  boolean isOutside() {
    return x >= width + len || x <= 0 - len || y >= height + len || y <= 0 - len;
  }
}
