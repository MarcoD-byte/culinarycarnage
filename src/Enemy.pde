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
    if (abs(player.x - x)>25) {
      if (x<player.x) {
        x +=speed ;
      } else {
        x -= speed;
      }
    }
    if (abs(player1.y - y)>25) {
      if (y<player1.y) {
        y +=speed ;
      } else {
        y -= speed;
      }
    }
  }
}

