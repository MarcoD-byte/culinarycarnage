// Jonah Gong
class Enemy {
  int x, y, size, health, damage, type, chargeSpeed;
  float speed;
  color c1;
  PImage enemyImage;
  boolean isAttacking, isStartedAttackDuration, isStartedAttackCd;
  char dir;
  Timer iFrames, moveCd, attackCd, attackDuration;
  //Types define the type of enemy, 1 = carrot, 2 = onion

  Enemy(int x, int y, int type) {
    this.x = x;
    this.y = y;
    this.type = type;
    iFrames = new Timer(1000);
    moveCd = new Timer(800);
    attackCd = new Timer(4000);
    attackDuration = new Timer(400);
    attackCd.start();
    isAttacking = false;
    isStartedAttackDuration = false;
    isStartedAttackCd = false;
    dir = 'o';
    chargeSpeed = int(random(7,10));
    if (type == 1) {
      enemyImage = loadImage("carrot.png");
      speed = 2;
      size = 50;
      health = 200;
      damage = 1;
    }
    if (type == 2) {
      enemyImage = loadImage("onion.png");
      speed = 1;
      size = 75;
      health = 100;
      damage = 2;
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
    if (isAttacking == false) {
      if (moveCd.isFinished() == true) {
        if (dx > dy) {
          if (x<player.x) {
            x +=speed ;
          } else {
            x -= speed;
          }
        } else {
          if (y<player.y) {
            y +=speed ;
          } else {
            y -= speed;
          }
        }
      }
    }
  }

  void takeDamage(int d) {
    if (iFrames.isFinished() == true) {
      health -= d;
      println("damagetaken");
    } else {
      iFrames.start();
    }
  }

  void attack() {

    if (attackCd.isFinished() == true) {
      if (isStartedAttackDuration == false) {
        int dx = (abs(player.x - x));
        int dy = (abs(player.y - y));

        if (dx > dy) {
          if (x<player.x) {
            dir = 'r';
          } else {
            dir = 'l';
          }
        } else {
          if (y<player.y) {
            dir = 'd';
          } else {
            dir = 'u';
          }
        }
        isStartedAttackDuration = true;
        isAttacking = true;
        isStartedAttackCd = false;
        attackDuration.start();
      }
    }
    if (attackDuration.isFinished() == true) {

      if (isStartedAttackCd == false) {
        isAttacking = false;
        isStartedAttackCd = true;
        isStartedAttackDuration = false;
        attackCd.start();
      }
    }
    if (isAttacking == true) {
      if (dir == 'r') {
        x += chargeSpeed;
      }
      if (dir == 'l') {
        x -= chargeSpeed;
      }
      if (dir == 'u') {
        y -= chargeSpeed;
      }
      if (dir == 'd') {
        y += chargeSpeed;
      }
    }
    if (isAttacking == false) {
    }
  }


  boolean isHitPlayer(Chef c) {
    float d = dist(x, y, c.x, c.y) ;
    if (d<size/2+15) {
      moveCd.start();
      return true;
    } else {
      return false;
    }
  }
}
