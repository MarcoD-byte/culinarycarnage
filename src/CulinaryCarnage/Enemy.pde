class Enemy {
  int x, y, size, health, damage, type;
  float speed;
  color c1;
  PImage enemyImage;
  //Types define the type of enemy, 1 = carrot, 2 = onion

  Enemy(int x, int y, int type) {
    this.x = x;
    this.y = y;
    this.type = type;
    if (type == 1) {
      enemyImage = loadImage("carrot.png");
      speed = 2;
      size = 50;
      health = 200;
      damage = 10;
    } if (type == 2) {
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
    imageMode (CENTER);
    enemyImage.resize(size, size);
    image (enemyImage, x, y);
  }

  void move() {
    int dx = (abs(player.x - x));
    int dy = (abs(player.y - y));
    if (dx > dy) {
      if (x<player.x) {
        x +=speed ;
        
      } else {
        x -= speed;
      }
    }
    else {
      if (y<player.y) {
        y +=speed ;
      } else {
        y -= speed;
      }
    }
  }

  boolean isHitPlayer(Chef c) {
    float d = dist(x, y, c.x, c.y) ;
    if (d<size/2+15) {
      return true;
    } else {
      return false;
    }
  }
}
