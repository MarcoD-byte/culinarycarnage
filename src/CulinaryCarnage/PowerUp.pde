//Sarah Zhang
//To do: replace image placeholders, make powerup effects work
//possibly add a interaction function?
class PowerUp {
  int x, y, size, health, speed, harm, cooldown;
  boolean isHit, isCollected, isOpen;
  char type;
  PImage powUpi, chestCi, chestOi;

  //member variables

  // constructor
  PowerUp(int x, int y, char type) {
    this.x = x;
    this.y = y;
    size = 10;
    this.type = type;
    chestCi = loadImage("chestC.png");
    chestOi = loadImage("chestO.png");
    if (type == 'a') {
      powUpi =  loadImage("");
    } else if (type == 'b') {
      powUpi =  loadImage("");
    }
    isOpen = false;
    isCollected = false;
  }
  //member methods
  void display() {
    imageMode(CENTER);
    //REPLACE PLACEHOLDERS
    //image(powUpi,x,y);
    if (isOpen == true) {
      image(chestOi, x, y);
      if (isClose(player) == true) {
        text("hit f to collect", x, y-30);
      }
    }
    if (type == 'a') {
      //replace placeholders
      fill(5);
      ellipse(x, y, size, size);
    } else if (type == 'b') {
      //replace placeholders
      fill(100);
      ellipse(x, y, size, size);
    }
    if (isOpen == false) {

      image(chestCi, x, y);
      if (isClose(player) == true) {
        text("hit f to open", x, y-30);
      }
    }
  }

  boolean isHit(Chef player) {
    float d = dist(x, y, player.x, player.y);
    if (d<25) {
      return true;
    } else {
      return false;
    }
  }

  boolean isClose(Chef player) {
    float d = dist(x, y, player.x, player.y);
    if (d<100) {
      return true;
    } else {
      return false;
    }
  }
}
