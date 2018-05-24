// DuckSort (Seong Hyeon "Ryan" Kim, Woosuk Lee, Raymond Wu)
// APCS2 pd8
// HW53 -- All That Bouncin’ . . . Break!
// W 2018-05-23

class Ball {

  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
  final float CHANGE_FACTOR = 0.25;
  final float MAX_RADIUS = 25;

  int radius, xVelocity, yVelocity, xPos, yPos, state;
  color RGB; // to hold RGB values

  Ball(int r) {
    radius = r;
    xVelocity = (int)(random(24)+1);
    yVelocity = (int)(random(24)+1);
    xPos = (int)(random(600));
    yPos = (int)(random(600));

    int rScale = (int)(random(256));
    int gScale = (int)(random(256));
    int bScale = (int)(random(256));
    RGB = color(rScale, gScale, bScale);

    fill(RGB);  // fill first time/when Ball constructed
    ellipse(xPos, yPos, radius/2, radius/2);
  }

  void checkState() {
    if (state == MOVING)
    {
      return;
    }
    if (state == GROWING)
    {
      xVelocity = 0;
      yVelocity = 0;
      radius += CHANGE_FACTOR;
    }
    if (state == SHRINKING)
    {
      xVelocity = 0;
      yVelocity = 0;
      radius -= CHANGE_FACTOR;
    }
    if (state == DEAD)
    {
      fill(0);
    }
  }

  void updateState(Ball a, Ball b) {
    if (a.state == MOVING && dist(a.xPos, a.yPos, b.xPos, b.yPos) == a.radius+b.radius && b.state == GROWING)
    {
      a.state = GROWING;
    }
    if (a.state == MOVING && dist(a.xPos, a.yPos, b.xPos, b.yPos) == a.radius+b.radius && b.state == SHRINKING)
    {
      a.state = SHRINKING;
    }
    if (a.radius == 0)
    {
      a.state = DEAD;
    }
  }
}