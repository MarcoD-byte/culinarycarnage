class Level {
  int level;
  Enemy e1;

  Level () {
    e1 = new Enemy(100, 100);
  }
  //PImage background01;

  //background01 = laodImage("url here");
  void level(int level) {
    if (level ==0) {
      // Tutorial level
      
      //replace with image
      background(244);
      fill(#E89921);
      textSize(50);
      text("Move with WASD", 100, 100);
      e1.display();
      e1.display();
      e1.move();
    } else if (level ==1) {
      // First level
    } else if (level ==2) {
      // First level
    } else if (level ==3) {
      // First level
    } else if (level ==4) {
      // First level
    } else {
    }
  }
}
