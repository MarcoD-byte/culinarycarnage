class Enemy {
  int x, y, speed;
  color c1;

  Enemy(int x, int y) {
    this.x = x;
    this.y = y;
    speed = 2;
    c1 = (0);
  }

  void display() {
    ellipseMode(CENTER);
    fill(c1);
    ellipse(x, y, 50, 50);
  }

  void move() {
    if (abs(p1.x - x)>25) {
      if (x<p1.x) {
        x +=speed ;
      } else {
        x -= speed;
      }
    }
    if (abs(p1.y - y)>25) {
      if (y<p1.y) {
        y +=speed ;
      } else {
        y -= speed;
      }
    }
  }
}

