// Jonah Gong
class Enemy {
  int x, y, size, health, damage, type, chargeSpeed, attackDurationTime;
  float speed;
  color c1;
  PImage enemyImage;
  boolean isAttacking, isStartedAttackDuration, isStartedAttackCd;
  char dir;
  Timer iFrames, moveCd, attackCd, attackDuration, staggerAttack;
  //Types define the type of enemy, 1 = carrot, 2 = onion

  Enemy(int x, int y, int type) {
    this.c1 = 255;
    if (type == 1) {
      enemyImage = loadImage("carrot.png");
      speed = 2;
      size = 50;
      health = 2;
      damage = 1;
      attackDurationTime = 600;
    }
    if (type == 2) {
      enemyImage = loadImage("onion.png");
      speed = 1;
      size = 75;
      health = 4;
      damage = 2;
      attackDurationTime = 1500;
    }
    this.x = x;
    this.y = y;
    this.type = type;
    iFrames = new Timer(1000);
    moveCd = new Timer(800);
    attackCd = new Timer(4000);
    attackDuration = new Timer(attackDurationTime);
    
    staggerAttack = new Timer(int(random(8000)));
    staggerAttack.start();
    isAttacking = false;
    isStartedAttackDuration = false;
    isStartedAttackCd = false;
    iFrames.start();
    dir = 'o';
    chargeSpeed = 7;
    enemyImage.resize(size, size);
  }

  void display() {
    //ellipseMode(CENTER);
    //fill(c1);
    //ellipse(x, y, 50, 50);
    imageMode (CENTER);
    textAlign (CENTER);
    tint(255,c1,c1);
    image (enemyImage, x, y);
    noTint();
  }

  void move() {
    int dx = (abs(player.x - x));
    int dy = (abs(player.y - y));
    if (isAttacking == false | type == 2) {
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
      moveCd.start();
      println("damagetaken");
      iFrames.start();
    }
  }

  void attack() {
    //staggers the initial attack so enemies aren't synced
    if (staggerAttack.isFinished() == true) {
    //attack cooldown is finished, attack starts
      if (attackCd.isFinished() == true) {
        //triggers once when attack starts
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
      
      //attack duration is finished, attack cooldown starts and attack ends
      if (attackDuration.isFinished() == true) {
        //triggers once when attack duration is finished
        if (isStartedAttackCd == false) {
          isAttacking = false;
          isStartedAttackCd = true;
          isStartedAttackDuration = false;
          //onion speed reverts back to normal
          if (type == 2){
            speed = 1;
          }
          //color change back to normal
          c1 = 255;
          attackCd.start();
        }
      }
      if (isAttacking == true) {
        //color change for attack
        c1 = 150;
        //carrot dash attack      
        if (type == 1) {
          if (moveCd.isFinished() == true) {
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
        }
        //onion speedup attack
        
        if (type == 2) {
          speed = 4;
        }
      }
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
  boolean isHitPlayerMelee(Chef c) {
    float d = dist(x, y, c.meleeX, c.meleeY) ;
    if (d < 25+(size/2)) {
      if (c.attacking == true) {
      println("hitplayermelee");
        return true;
      } else {
        return false;
      }
    } else {
      
      return false;
    }
  }
}
