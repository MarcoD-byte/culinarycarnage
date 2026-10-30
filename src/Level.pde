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

      //replace background with image
      background(10);
      fill(#E89921, 95);
      textSize(30);
      textAlign(CENTER);
      text("Move with\nWASD", width/3, 100);
      text("Use space\nto attack",  2* width/3, 100);
      fill(150,50);
      textSize(15);
      text("Game made by Franklin, Jonah, Marco, and Sarah", width/2, 400);
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
