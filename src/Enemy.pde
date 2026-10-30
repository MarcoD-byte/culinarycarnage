class Enemy {
  int x, y, size, speed, health, damage;
  color c1;
  PImage enemyImage;
  char type;

  Enemy(int x, int y) {
    this.x = x;
    this.y = y;
    if (random(2)>1) {
      type = 'c';
      enemyImage = loadImage("carrot.png");
      speed = 2;
      size = 50;
      health = 200;
      damage = 10;
    } else {
      type = 'o';
      enemyImage = loadImage("onion.png");
      speed = 1;
      size = 75;
      health = 100;
      damage = 15;
    }
  }

  void display() {
    //ellipseMode(CENTER);
    //fill(c1);
    //ellipse(x, y, 50, 50);
    enemyImage.resize(size,size);
    image (enemyImage, x, y);
  }

  void move() {
    if (abs(player.x - x)>size/2+5) {
      if (x<player.x) {
        x +=speed ;
      } else {
        x -= speed;
      }
    }
    if (abs(player.y - y)>size/2+15) {
      if (y<player.y) {
        y +=speed ;
      } else {
        y -= speed;
      }
    }
  }
}
