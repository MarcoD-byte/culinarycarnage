// Franklin Roth

class Chef {
  // member variables
  PApplet parent;

  int x, y, angle, health, meleeDamage, speed, meleeCooldown, meleeAnim, meleeX, meleeY;
  float meleeAngle;
  PImage front, back, left, right;
  Timer iFrames;

  Gif walkr, walkl, walkup, walkd;

  boolean movingUp = false;
  boolean movingDown = false;
  boolean movingRight = false;
  boolean movingLeft = false;
  boolean attacking = false;

  // construct member variables
  Chef(PApplet app) {
    x = width/2;
    y = width/2;
    meleeX = 0;
    meleeY = 0;
    angle = 1;
    health = 150;
    meleeDamage = 30;
    speed = 3;
    meleeCooldown = 100;
    meleeAnim = 25;
    meleeAngle = 0;

    iFrames = new Timer(1000);

    front = loadImage("front-1x.png");
    back = loadImage("back-1x.png");
    left = loadImage("left-1x.png");
    right = loadImage("right-1x.png");

    walkr = new Gif(app, "walkr.gif");
    walkr.play();
    walkl = new Gif(app, "walkl.gif");
    walkl.play();
    walkup = new Gif(app, "walkup.gif");
    walkup.play();
    walkd = new Gif(app, "walkd.gif");
    walkd.play();
  }

  void display() {
    imageMode(CENTER);

    if (angle == 1 && movingDown == true) {
      image(walkd, x, y);
    } else if (angle == 1) {
      image(front, x, y);
    }
    if (angle == 2 && movingUp == true) {
      image(walkup, x, y);
    } else if (angle == 2) {
      image(back, x, y);
    }
    if (angle == 3 && movingLeft == true) {
      image(walkl, x, y);
    } else if (angle == 3) {
      image(left, x, y);
    }
    if (angle == 4 && movingRight == true) {
      image(walkr, x, y);
    } else if (angle == 4) {
      image(right, x, y);
    }

    if (attacking == true) {
      attack.play();
      pushMatrix();

      translate(meleeX, meleeY);
      rotate(meleeAngle);

      image(attack, 0, 0);

      popMatrix();
      if (attack.currentFrame()>=3) {
        attacking = false;
      }
    }
    if (attacking == false) {
      attack.noLoop();
    }
  }

  // Member methods

  void update() {
    meleeAnim -= 1;
    meleeCooldown -= 1;


    if (angle == 2) {
      meleeAngle = 0;
      meleeY = y - 28;
      meleeX = x;
    }
    if (angle == 1) {
      meleeAngle = PI;
      meleeY = y + 28;
      meleeX = x;
    }
    if (angle == 3) {
      meleeAngle = -HALF_PI;
      meleeX = x - 28;
      meleeY = y;
    }
    if (angle == 4) {
      meleeAngle = HALF_PI;
      meleeX = x + 28;
      meleeY = y;
    }


    if (movingUp == true) {
      angle = 2;
      y = y - speed;
    }
    if (movingDown == true) {
      angle = 1;
      y = y + speed;
    }
    if (movingLeft == true) {
      angle = 3;
      x = x - speed;
    }
    if (movingRight == true) {
      angle = 4;
      x = x + speed;
    }
  }

  boolean atREdge() {
    if (player.x>width-25) {
      return true;
    } else {
      return false;
    }
  }

  boolean atLEdge() {
    if (player.x<25) {
      return true;
    } else {
      return false;
    }
  }

  void relocate (int x, int y) {
    this.x = x;
    this.y = y;
  }

  void melee() {
    if (player.meleeCooldown < 1) {
      println("Melee");
      meleeCooldown = 100;
      meleeAnim -= 1;


      if (player.meleeAnim == 0) {
        attack.stop();
        meleeAnim = 25;
      }
      meleeCooldown = 100;
    } else {
      println("Cooldown: " + player.meleeCooldown);
    }
    if (meleeAnim < 1) {
      meleeAnim = 0;
    }
  }

  void takeDamage(int d) {
    if (iFrames.isFinished() == true) {
      health -= d;
      println("damagetaken");
      iFrames.start();
    }
  }
}
