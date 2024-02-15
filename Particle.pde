class Particle
{
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
    speed = Math.max((float)Math.random(), 0.3) * 10;
    angle = (float)(Math.random() * 2 * PI);;
  }
  
  void show() {
    float mappedDist = map(dist(x,y, height * 0.5, height * 0.5), 0, width, 30, 255);
    fill(particleColor, mappedDist);
    ellipse(x, y, len * 2, len * 2);
  }
  
  void tick() {
    x += Math.cos(angle) * speed;
    y += Math.sin(angle) * speed;
  }
  
  boolean isOutside() {
    return x >= width + len || x <= 0 - len || y >= height + len || y <= 0 - len;
  }
}
