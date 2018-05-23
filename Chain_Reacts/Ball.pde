// DuckSort (Seong Hyeon "Ryan" Kim, Woosuk Lee, Raymond Wu)
// APCS2 pd8
// HW53 -- All That Bouncin’ . . . Break!
// W 2018-05-23

int radius, rScale, gScale, bScale, xVelocity, yVelocity, xPos, yPos;

void Ball(int r) {
  radius = r;
  rScale = (int)Math.random()*255;
  gScale = (int)Math.random()*255;
  bScale = (int)Math.random()*255;
  xVelocity = (int)Math.random()*10;
  yVelocity = (int)Math.random()*10;
  xPos = 300;
  yPos = 300;
}

void setup() {
  ellipse(xPos, yPos, radius/2, radius/2);
}
void draw() {
  clear();
  if (xPos+xVelocity <= 0 || xPos+xVelocity >= 600)
  { xVelocity *= -1; }
  if (yPos+yVelocity <= 0 || yPos+yVelocity >= 600)
  { yVelocity *= -1; }
  ellipse(xPos+xVelocity, yPos+yVelocity, radius/2, radius/2);
}