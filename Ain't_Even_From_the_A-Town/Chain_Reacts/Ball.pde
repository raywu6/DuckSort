// DuckSort (Seong Hyeon "Ryan" Kim, Woosuk Lee, Raymond Wu)
// APCS2 pd8
// HW53 -- All That Bouncin’ . . . Break!
// W 2018-05-23

class Ball {

  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
  final float CHANGE_FACTOR = 5;
  final float MAX_RADIUS = 200;

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
  Ball(int x, int y, int r) {
    radius = r;
    xPos = x;
    yPos = y;
    int rScale = (int)(random(256));
    int gScale = (int)(random(256));
    int bScale = (int)(random(256));
    RGB = color(rScale, gScale, bScale);

    fill(RGB);  // fill first time/when Ball constructed
    ellipse(xPos, yPos, radius/2, radius/2);
  }

  void setState(int status) {
    state = status;
  }

  void updateState(Ball a) {
    if (a.state == MOVING && (pow(a.xPos - this.xPos,2) + pow(a.yPos - this.yPos,2) <= pow(a.radius - this.radius,2)))
    {
      a.state = GROWING;
    }
    if (a.state == GROWING && a.radius == MAX_RADIUS)
    {
      a.state = SHRINKING;
    }
    if (a.radius == 0)
    {
      a.state = DEAD;
    }
  }
}
