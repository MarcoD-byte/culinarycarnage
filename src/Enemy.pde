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
    enemyCarrot = loadImage("carrotpngfilehereDONTFORGET");
    enemyOnion = loadImage("onionpngfilehereDONTFORGET");
  }

  void display() {
    ellipseMode(CENTER);
    fill(c1);
    ellipse(x, y, 50, 50);
    //enemyCarrot.resize(size,size);
    //image (enemyCarrot, x, y)
  }

  void move() {
    if (abs(player1.x - x)>25) {
      if (x<player1.x) {
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
