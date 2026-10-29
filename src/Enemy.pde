class Enemy {
  int x, y, speed, size;
  color c1;
  PImage enemyCarrot, enemyOnion;

  Enemy(int x, int y) {
    this.x = x;
    this.y = y;
    speed = 2;
    size = 50;
    c1 = (0);
    enemyCarrot = loadImage("carrot.png");
    enemyOnion = loadImage("onion.png");
  }

  void display() {
    ellipseMode(CENTER);
    fill(c1);
    ellipse(x, y, 50, 50);
    //enemyCarrot.resize(size,size);
    //image (enemyCarrot, x, y)
  }

  void move() {
    if (abs(player.x - x)>25) {
      if (x<player.x) {
        x +=speed ;
      } else {
        x -= speed;
      }
    }
    if (abs(player.y - y)>25) {
      if (y<player.y) {
        y +=speed ;
      } else {
        y -= speed;
      }
    }
  }
}
