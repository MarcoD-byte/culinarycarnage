class Chef {
  // member variables
  int x, y, angle, health, meleeDamage, speed, meleeCooldown;

  PImage front, back, left, right;

  boolean movingUp = false;
  boolean movingDown = false;
  boolean movingRight = false;
  boolean movingLeft = false;

  // construct member variables
  Chef(int x, int y) {
    x = width/2;
    y = height/2;
    angle = 1;
    health = 150;
    meleeDamage = 30;
    speed = 3;
    meleeCooldown = 25;
    front = loadImage("front-1x.png");
    back = loadImage("back-1x.png");
    left = loadImage("left-1x.png");
    right = loadImage("right-1x.png");
  }

  void display() {
    imageMode(CENTER);

    if (angle == 1) {
      image(front, x, y);
    }
    if (angle == 2) {
      image(back, x, y);
    }
    if (angle == 3) {
      image(left, x, y);
    }
    if (angle == 4) {
      image(right, x, y);
    }
  }

  // Member methods

  void update() {
    

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

  void melee() {
    
  }
}
