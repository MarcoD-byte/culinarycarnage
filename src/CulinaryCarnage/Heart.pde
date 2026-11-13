// Marco DalCanto

class Heart {
  float x, y;

  Heart (int x, int y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    //if (a) {
      image(heart, x, y);
    //} else {
    //  heart.noLoop();
    //  heart.play();
    //}
  }

  void animate() {
    image(heart,x,y);
    heart.play();
  }
}
