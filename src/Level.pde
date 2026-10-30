class Level {
  int level, currentEnemyCount, x1, y1, x2, y2, x3, y3;
  ArrayList<Enemy> enemies = new ArrayList <Enemy>();
  IntList enemyPosition;
  IntList levelEnemyCounts;



  Level () {
    levelEnemyCounts = new IntList(1, 2);
    enemyPosition = new IntList(100, 100, 200, 100, 300, 100);
  }


  //PImage background01;

  //background01 = laodImage("url here");
  void level(int level) {
    if (level ==0) {
      // Tutorial level
      for (int i= 0; currentEnemyCount<=levelEnemyCounts.get(0); i++) {
        enemies.add(new Enemy(enemyPosition.get(0), enemyPosition.get(0+1)));
        currentEnemyCount++;
      }

      //replace background with image
      background(10);
      fill(#E89921, 95);
      textSize(30);
      textAlign(CENTER);
      text("Move with\nWASD", width/3, 100);
      text("Use space\nto attack", 2* width/3, 100);
      fill(150, 50);
      textSize(15);
      text("Game made by Franklin, Jonah, Marco, and Sarah", width/2, 400);
      for (int i = 1; i< enemies.size(); i++) {
        Enemy e = enemies.get(i);
        e.display();
        e.move();
      }
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
